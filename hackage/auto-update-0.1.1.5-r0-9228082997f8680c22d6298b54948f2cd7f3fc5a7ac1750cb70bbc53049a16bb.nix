{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "auto-update";
        version = "0.1.1.5";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/yesodweb/wai";
      url = "";
      synopsis = "Efficiently run periodic, on-demand actions";
      description = "A common problem is the desire to have an action run at a scheduled interval, but only if it is needed. For example, instead of having every web request result in a new @getCurrentTime@ call, we'd like to have a single worker thread run every second, updating an @IORef@. However, if the request frequency is less than once per second, this is a pessimization, and worse, kills idle GC.\n\nThis library allows you to define actions which will either be performed by a dedicated thread or, in times of low volume, will be executed by the calling thread.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }