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
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "ats-format"; version = "0.2.0.25"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017-2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "A source-code formatter for ATS";
      description = "An opinionated source-code formatter for [ATS](http://www.ats-lang.org/).";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.cli-setup or (pkgs.buildPackages.cli-setup or (errorHandler.setupDepError "cli-setup")))
        ];
      };
    components = {
      exes = {
        "atsfmt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."language-ats" or (errorHandler.buildDepError "language-ats"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."htoml-megaparsec" or (errorHandler.buildDepError "htoml-megaparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            ];
          buildable = true;
          };
        };
      };
    }