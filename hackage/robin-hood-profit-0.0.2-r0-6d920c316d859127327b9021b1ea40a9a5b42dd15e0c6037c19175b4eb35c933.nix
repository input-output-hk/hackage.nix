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
      identifier = { name = "robin-hood-profit"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Daniil Iaitkov 2025";
      maintainer = "dyaitskov@gmail.com";
      author = "Daniil Iaitskov";
      homepage = "http://github.com/yaitskov/RobinHood-pr0fit";
      url = "";
      synopsis = "Calculate per instrument profit from Robin-Hood activity report";
      description = "The tool has a command line interface. It generates quarter profit\nreports out of Robin-Hood activity reports\navailable in the CSV format. Quatities from such reports are important\nfor estimating quarter prepayment to IRS during\ncurrent tax year.  According to IRS guidline if you postope pay till\nnext tax year (i.e Jan-Apr) and amount you owe is greater than $1k\nyou may have to pay a penalty.\n\nIn general any quarter report requires sequential processing of all\nhistory (shares might be bought at one year and sold a decade later)\nsince a Robin-Hood account establishment preceding the target\nquater. This data aspect accents algorithm implementation on memory\nefficiency and throughput.\n\nSee Readme file for details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec-isotropic" or (errorHandler.buildDepError "attoparsec-isotropic"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."Decimal" or (errorHandler.buildDepError "Decimal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."trace-embrace" or (errorHandler.buildDepError "trace-embrace"))
        ];
        buildable = true;
      };
      exes = {
        "rhprofit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."robin-hood-profit" or (errorHandler.buildDepError "robin-hood-profit"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."attoparsec-isotropic" or (errorHandler.buildDepError "attoparsec-isotropic"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."robin-hood-profit" or (errorHandler.buildDepError "robin-hood-profit"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }