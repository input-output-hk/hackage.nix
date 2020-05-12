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
      specVersion = "1.8";
      identifier = { name = "nanoAgda"; version = "0.1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "A toy dependently-typed language";
      description = "nanoAgda implements a type-checker for a toy dependently-typed\nlanguage.\nThe goal of the project is to provide a minimal type-checker\nwith dependent types that can be easily fiddled with.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "nanoAgda" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."BNFC-meta" or (errorHandler.buildDepError "BNFC-meta"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }