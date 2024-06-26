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
      identifier = { name = "openexr-write"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2017 Pavol Klacansky";
      maintainer = "pavol@klacansky.com";
      author = "Pavol Klacansky";
      homepage = "https://github.com/pavolzetor/openexr-write#readme";
      url = "";
      synopsis = "Library to write images in OpenEXR HDR file format.";
      description = "OpenEXR allows to store pixels as floating point numbers and thus can capture high dynamic range.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-split" or (errorHandler.buildDepError "vector-split"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."openexr-write" or (errorHandler.buildDepError "openexr-write"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }