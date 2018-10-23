{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "wai-test";
        version = "3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/web-application-interface";
      url = "";
      synopsis = "Unit test framework (built on HUnit) for WAI applications. (deprecated)";
      description = "Since WAI 3.0, this code has been merged into wai-extra.";
      buildType = "Simple";
    };
    components = {
      "wai-test" = {
        depends  = [ (hsPkgs.wai) ];
      };
    };
  }