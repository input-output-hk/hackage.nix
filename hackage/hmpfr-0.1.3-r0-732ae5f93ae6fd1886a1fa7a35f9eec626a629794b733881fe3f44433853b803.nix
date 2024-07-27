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
      specVersion = "1.2";
      identifier = { name = "hmpfr"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aleš Bizjak <ales.bizjak0@gmail.com>";
      author = "Aleš Bizjak";
      homepage = "http://code.haskell.org/hmpfr/";
      url = "";
      synopsis = "Haskell binding to MPFR library";
      description = "Haskell binding to MPFR library. Tested with 2.3.2.\nSome simple examples of usage can be found in test/Demo.hs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs."integer" or (errorHandler.buildDepError "integer"));
        libs = [ (pkgs."mpfr" or (errorHandler.sysDepError "mpfr")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }