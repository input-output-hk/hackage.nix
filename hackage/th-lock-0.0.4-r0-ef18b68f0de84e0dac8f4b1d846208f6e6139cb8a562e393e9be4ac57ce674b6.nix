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
      identifier = { name = "th-lock"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniil Iaitskov <dyaitskov@gmail.com>";
      author = "Daniil Iaitskov <dyaitskov@gmail.com>";
      homepage = "https://github.com/yaitskov/th-lock";
      url = "";
      synopsis = "Serialize compilation of modules with TH code modifing shared state";
      description = "Recent GHC versions with option @-j\\<N>@ where @N@ greater than 1 can\nbuild modules concurrently. Usually it is cool thing, because build time\ndrops, but there is a drawback in form of problems with TH code\nmaintaining a shared state.\n\nI encountered such issue while running tests for\n<https://hackage.haskell.org/package/trace-embrace trace-embrace>\npackage. Package TH code has a shared state (immutable configuration\nfile loaded once), which is not supposed to change after loading, but\ntests require to cover all cases\\/branches and achieving this in the\nscope of a single cabal test-suit leads to inconsistencies.\n\nSpreading tests among multiple test suits cause code duplication and\nlooks less elegant.\n\nCompilation of conflicting modules can be serialized with\n<https://hackage.haskell.org/package/th-lock/docs/Language-Haskell-TH-Lock.html#v:ensureSerialCompilationVerbose ensureSerialCompilationVerbose>.\n\n> {-# LANGUAGE TemplateHaskell #-}\n> module ModuleA where\n>\n> import Language.Haskell.TH.Lock\n>\n> ensureSerialCompilationVerbose\n\n________________________________________________________________________\n\n> {-# LANGUAGE TemplateHaskell #-}\n> module ModuleB where\n>\n> import Language.Haskell.TH.Lock\n>\n> ensureSerialCompilationVerbose";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."th-lock" or (errorHandler.buildDepError "th-lock"))
          ];
          buildable = true;
        };
      };
    };
  }