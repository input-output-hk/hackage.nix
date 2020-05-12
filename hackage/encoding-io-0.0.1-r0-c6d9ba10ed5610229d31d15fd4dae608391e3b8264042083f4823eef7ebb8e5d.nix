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
      specVersion = "1.10";
      identifier = { name = "encoding-io"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Shao Cheng";
      maintainer = "Shao Cheng <astrohavoc@gmail.com>";
      author = "";
      homepage = "https://github.com/TerrorJack/encoding-io#readme";
      url = "";
      synopsis = "Encoding-aware file I/O.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."chunked-data" or (errorHandler.buildDepError "chunked-data"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      };
    }