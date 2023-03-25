{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "3.0";
      identifier = { name = "memfd"; version = "1.0.1.3"; };
      license = "Apache-2.0";
      copyright = "2022 Mission Valley Software LLC";
      maintainer = "hello@typeclasses.com";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/memfd";
      url = "";
      synopsis = "Open temporary anonymous Linux file handles";
      description = "memfd lets us open memory-only files that are not linked\ninto a directory and are not backed by persistent storage.\nThis feature is only available on Linux.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }