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
      identifier = { name = "pipes-lines"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 David McHealy";
      maintainer = "david.mchealy@gmail.com";
      author = "David McHealy";
      homepage = "https://github.com/mindreader/pipes-lines";
      url = "";
      synopsis = "Pipes for grouping by lines with carriage returns.";
      description = "`pipes-lens` contains utility functions for splitting lines that involve carriage returns aka lines ending in \\\\r\\\\n\n\nThese are utility functions that were omitted from pipes-bytestring and pipes-text";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-group" or (errorHandler.buildDepError "pipes-group"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "pipes-lines-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pipes-lines" or (errorHandler.buildDepError "pipes-lines"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-group" or (errorHandler.buildDepError "pipes-group"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }