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
      identifier = { name = "indentation-trifecta"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ömer Sinan Ağacan <omeragacan@gmail.com>\nAleksey Kliger <aleksey@lambdageek.org>";
      author = "Michael D. Adams <http://michaeldadams.org/>";
      homepage = "https://bitbucket.org/adamsmd/indentation";
      url = "";
      synopsis = "Indentation sensitive parsing combinators for Trifecta";
      description = "Indentation sensitive parsing combinators for Trifecta.\n\nSee\n\n__Michael D. Adams and Ömer S. Ağacan__.\nIndentation-sensitive parsing for Parsec.\nIn /Proceedings of the 2014 ACM SIGPLAN Symposium on Haskell/,\nHaskell ’14, pages 121–132.\nACM, New York, NY, USA, September 2014. ISBN 978-1-4503-3041-1.\n<http://dx.doi.org/10.1145/2633357.2633369 doi:10.1145/2633357.2633369>.\n\nThis package provides indentation combinators for\nTrifecta.  For Parsec, install\nindentation-parsec.  For backward compatability\nor to install both, install indentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."indentation-core" or (errorHandler.buildDepError "indentation-core"))
          (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          ];
        buildable = true;
        };
      tests = {
        "test-indentation" = {
          depends = [
            (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."indentation-trifecta" or (errorHandler.buildDepError "indentation-trifecta"))
            ];
          buildable = true;
          };
        };
      };
    }