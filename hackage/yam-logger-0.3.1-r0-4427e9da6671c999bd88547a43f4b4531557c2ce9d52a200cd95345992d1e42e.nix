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
        name = "yam-logger";
        version = "0.3.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "";
      homepage = "https://github.com/leptonyu/yam#readme";
      url = "";
      synopsis = "Yam Logger";
      description = "logger module for yam";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.fast-logger)
          (hsPkgs.monad-logger)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.wai-logger)
        ];
      };
    };
  }