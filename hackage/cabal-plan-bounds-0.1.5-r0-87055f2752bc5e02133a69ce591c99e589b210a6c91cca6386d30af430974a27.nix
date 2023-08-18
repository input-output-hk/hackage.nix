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
      identifier = { name = "cabal-plan-bounds"; version = "0.1.5"; };
      license = "BSD-2-Clause";
      copyright = "2023";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "https://github.com/nomeata/cabal-plan-bounds";
      url = "";
      synopsis = "Derives cabal bounds from build plans";
      description = "Manually curated dependency version ranges tend to become a lie: They likely\ninclude versions of your the dependencies that are neither longer tested by your CI\nsystem, or implied by compatibility with the tested versions.\n\nSo the conclusion must be to __not write build-depends ranges by hand!__\nWhich is an unpleaseant chore instead.\n\nInstead, __derive the build-depends from your actual CI builds!__\n\nThis tool helps with that. See the README for more information.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal-plan-bounds" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
            (hsPkgs."cabal-plan" or (errorHandler.buildDepError "cabal-plan"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }