<?php


class Video {
    private $con;
    private $sqlData;
    private $entity;

    public function __construct($con, $input) {
        $this->con = $con;

        if(is_array($input)) {
            $this->sqlData = $input;
        } else {
            $query = $this->con->prepare("SELECT * FROM videos WHERE id=:id");
            $query->bindValue(":id", $input);
            $query->execute();

            $this->sqlData = $query->fetch(PDO::FETCH_ASSOC);
        }

        $this->entity = new Entity($con, $this->sqlData["entityId"]);
    }

    public function getId() {
        return $this->sqlData["id"];
    }

    public function getTitle() {
        return $this->sqlData["title"];
    }

    public function getEntityName() {
        return $this->entity->getName();
    }

    public function getDescription() {
        return $this->sqlData["description"];
    }

    public function getFilePath() {
        return $this->sqlData["filePath"];
    }

    public function getThumbnail() {
        return $this->entity->getThumbnail();
    }

    public function getEpisodeNumber() {
        return $this->sqlData["episode"];
    }

    public function getSeasonNumber() {
        return $this->sqlData["season"];
    }

    public function getEntityId() {
        return $this->sqlData["entityId"];
    }

    public function getDuration() {
        $rawDuration = $this->sqlData["duration"];
        $durationArray = explode(":", $rawDuration);
        $hrs = $durationArray[0];
        $mins = $durationArray[1];
        $strToReturn = "";


        if ($hrs > 1) {$strToReturn .= "$hrs hrs  ";}
        else { if ($hrs == 1) {$strToReturn .= "$hrs hr  ";} }


        if ($mins > 1) {$strToReturn .= "$mins mins";}
        else { if ($mins == 1) {$strToReturn .= "$mins min";} }



        return $strToReturn;
    }

    public function incrementViews() {
        $query = $this->con->prepare("UPDATE videos SET views=views+1 WHERE id=:id");
        $query->bindValue(":id", $this->getId());
        $query->execute();
    }

    public function getSeasonAndEpisode() {
        if($this->isMovie()) {
            return;
        }

        $season = $this->getSeasonNumber();
        $episode = $this->getEpisodeNumber();

        return "Season $season, Episode $episode";
    }

    public function isMovie() {
        return $this->sqlData["isMovie"] == 1;
    }

    public function isInProgress($username) {
        $query = $this->con->prepare("SELECT * FROM videoProgress WHERE videoId =:videoId AND username=:username");
        $query->bindValue(":videoId", $this->getId());
        $query->bindValue(":username", $username);
        $query->execute();

        return $query->rowCount() != 0;
    }

    public function hasSeen($username) {
        $query = $this->con->prepare("SELECT * FROM videoProgress WHERE videoId =:videoId AND username=:username AND finished=1");
        $query->bindValue(":videoId", $this->getId());
        $query->bindValue(":username", $username);
        $query->execute();

        return $query->rowCount() != 0;
    }

    public function getSubtitlesHTML() {
        // <track kind="subtitles" label="English subtitles" src="owncloud/data/admin/files/media/6ug/subs/English.eng.vtt" srclang="en" default></track>
        $strToReturn = "";

        $query = $this->con->prepare("SELECT * FROM subtitles WHERE videoId =:videoId");
        $query->bindValue(":videoId", $this->getId());
        $query->execute();

        while($row = $query->fetch(PDO::FETCH_ASSOC)) {
            $label = $row['label'];
            $src = $row['filePath'];
            $default1 = $row['default1'] ? "default" : "";

            $strToReturn .= "<track kind='subtitles' label='$label' src='$src' $default1></track>";
        }

        return $strToReturn;

    }
}

?>