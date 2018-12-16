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
        name = "monad-logger-json";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "dev@fpcomplete.com";
      author = "FP Complete Developers";
      homepage = "http://github.com/fpco/monad-logger-json";
      url = "";
      synopsis = "JSON-friendly Logging APIs";
      description = "Convienence functions for logging ToJSON with monad-logger";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.monad-logger)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
        ];
      };
    };
  }