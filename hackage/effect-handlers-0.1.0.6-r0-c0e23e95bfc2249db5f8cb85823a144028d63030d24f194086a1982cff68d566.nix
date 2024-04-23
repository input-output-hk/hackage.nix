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
      identifier = { name = "effect-handlers"; version = "0.1.0.6"; };
      license = "MIT";
      copyright = "";
      maintainer = "Andraz Bajt <andraz@bajt.me>";
      author = "Andraz Bajt, Blaz Repas";
      homepage = "https://github.com/edofic/effect-handlers";
      url = "";
      synopsis = "A library for writing extensible algebraic effects and handlers. Similar to extensible-effects but with deep handlers.";
      description = "This is an extensible effects library for Haskell taking inspiration from the Eff language <http://www.eff-lang.org/>.\n\nSee these papers for the ideas and theory behind the library:\n\n- O. Kammar et al: Handlers in Action! <http://homepages.inf.ed.ac.uk/slindley/papers/handlers.pdf>\n- A. Bauer, M. Pretnar: Programming with Algebraic Effects and Handlers <http://arxiv.org/abs/1203.1539>\n- O Kiselyov, A Sabry, C Swords: Extensible Effects <http://dl.acm.org/citation.cfm?id=2503791>\n\nImplementation wise it's most close to @extensible-effects@ <http://hackage.haskell.org/package/extensible-effects> (also see the Extensible Effects paper) but it implements deep handlers instead of shallow.\n\n@\nimport Control.Effects.Cont.Eff\nimport Control.Effects.Cont.Reader\nimport Control.Effects.Cont.Exception\n\nprogram = do\n&#32;&#32;v <- ask\n&#32;&#32;if v < 15\n&#32;&#32;then throw $ show v\n&#32;&#32;else return (v+1)\n\nrun n = runPure . handle exceptionHandler . handle (readerHandler n)\n\nres :: Integer -> Either String Integer\nres n = run n program\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."effect-handlers" or (errorHandler.buildDepError "effect-handlers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "benchm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."effect-handlers" or (errorHandler.buildDepError "effect-handlers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }