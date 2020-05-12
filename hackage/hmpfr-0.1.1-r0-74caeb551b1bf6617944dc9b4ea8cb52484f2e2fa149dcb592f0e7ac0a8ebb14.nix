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
      specVersion = "0";
      identifier = { name = "hmpfr"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aleš Bizjak <ales.bizjak0@gmail.com>";
      author = "Aleš Bizjak";
      homepage = "http://code.haskell.org/hmpfr/";
      url = "";
      synopsis = "Haskell binding to MPFR library";
      description = "Haskell binding to MPFR library. Tested with MPFR 2.3.1 and 2.3.2.\nSome simple examples of usage can be found in test/Demo.hs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."mpfr" or (errorHandler.sysDepError "mpfr")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }