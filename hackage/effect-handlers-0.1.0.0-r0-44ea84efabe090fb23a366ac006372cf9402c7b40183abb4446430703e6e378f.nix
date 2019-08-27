let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "effect-handlers"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Andraz Bajt <andraz@bajt.me>";
      author = "Andraz Bajt, Blaz Repas";
      homepage = "https://github.com/edofic/effect-handlers";
      url = "";
      synopsis = "A library for writing extensible algebraic effects and handlers. Similar to extensible-effects but with deep handlers.";
      description = "This is an extensible effects library for Haskell taking inspiration from the Eff language <http://www.eff-lang.org/>.\n\nSee these papers for the ideas and theory behind the library:\n\n- O. Kammar et al: Handlers in Action! <http://homepages.inf.ed.ac.uk/slindley/papers/handlers.pdf>\n- A. Bauer, M. Pretnar: Programming with Algebraic Effects and Handlers <http://arxiv.org/abs/1203.1539>\n- O Kiselyov, A Sabry, C Swords: Extensible Effects <http://dl.acm.org/citation.cfm?id=2503791>\n\nImplementation wise it's most close to @extensible-effects@ <http://hackage.haskell.org/package/extensible-effects> (also see the Extensible Effects paper) but it implements deep handlers instead of shallow.\n\n@\nimport Control.Effects.Cont.Eff\nimport Control.Effects.Cont.Reader\nimport Control.Effects.Cont.Exception\n\nprogram = do\nv <- ask\nif v < 15\nthen throw \$ show v\nelse return (v+1)\n\nrun n = runPure . handle exceptionHandler . handle (readerHandler n)\n\nres :: Integer -> Either String Integer\nres n = run n program\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."kan-extensions" or (buildDepError "kan-extensions"))
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."effect-handlers" or (buildDepError "effect-handlers"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."hspec-discover" or (buildDepError "hspec-discover"))
            ];
          };
        };
      benchmarks = {
        "benchm" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."effect-handlers" or (buildDepError "effect-handlers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        };
      };
    }