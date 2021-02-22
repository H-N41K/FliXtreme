requirejs.config({
    //By default load any module IDs from js/lib
    baseUrl: 'assets/js',
    //except, if the module ID starts with "app",
    //load it from the js/app directory. paths
    //config is relative to the baseUrl, and
    //never includes a ".js" extension since
    //the paths config could be for a directory.
});

define('global/window', [], () => {
  return window;
});

define('global/document', ['global/window'], (window) => {
  return window.document;
});