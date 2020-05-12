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
      identifier = { name = "fileplow"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/fileplow#readme";
      url = "";
      synopsis = "Library to process and search large files or a collection of files";
      description = "Library to process and search large files or a collection of files";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."binary-search" or (errorHandler.buildDepError "binary-search"))
          ];
        buildable = true;
        };
      tests = {
        "fileplow-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fileplow" or (errorHandler.buildDepError "fileplow"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }