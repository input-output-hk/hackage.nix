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
      specVersion = "2.4";
      identifier = { name = "struct-inspector"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "owen@owen.cafe";
      author = "Owen Shepherd";
      homepage = "";
      url = "";
      synopsis = "Inspect the padding and size of C data declarations and their fields";
      description = "Inspect the padding and size of C data declarations and their fields.\nFor more information see <https://github.com/414owen/struct-inspector>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "struct-packing-report" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."language-c" or (errorHandler.buildDepError "language-c"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."multi-except" or (errorHandler.buildDepError "multi-except"))
            (hsPkgs."dlist-nonempty" or (errorHandler.buildDepError "dlist-nonempty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }