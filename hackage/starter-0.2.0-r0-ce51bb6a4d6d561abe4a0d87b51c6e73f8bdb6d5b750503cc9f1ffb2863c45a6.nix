{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "starter";
        version = "0.2.0";
      };
      license = "MPL-2.0";
      copyright = "2018 Raghu Kaippully";
      maintainer = "rkaippully@gmail.com";
      author = "Raghu Kaippully";
      homepage = "https://github.com/rkaippully/starter#readme";
      url = "";
      synopsis = "Develop applications without restarts";
      description = "Please see the README on Github at <https://github.com/rkaippully/starter#readme>";
      buildType = "Simple";
    };
    components = {
      "starter" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.fsnotify)
        ];
      };
    };
  }