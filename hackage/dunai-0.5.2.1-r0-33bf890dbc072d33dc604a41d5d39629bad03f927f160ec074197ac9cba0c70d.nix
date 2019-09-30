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
    flags = { test-hlint = false; test-doc-coverage = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "dunai"; version = "0.5.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez, Manuel Bärenz";
      homepage = "https://github.com/ivanperez-keera/dunai";
      url = "";
      synopsis = "Generalised reactive framework supporting classic, arrowized and monadic FRP.";
      description = "Dunai is a DSL for strongly-typed CPS-based composable transformations.\n\nDunai is based on a concept of Monadic Stream Functions (MSFs). MSFs are\ntransformations defined by a function @unMSF :: MSF m a b -> a -> m (b, MSF m a b)@\nthat executes one step of a simulation, and produces an output in a monadic\ncontext, and a continuation to be used for future steps.\n\nMSFs are a generalisation of the implementation mechanism used by Yampa,\nWormholes and other FRP and reactive implementations.\n\nWhen combined with different monads, they produce interesting effects. For\nexample, when combined with the @Maybe@ monad, they become transformations\nthat may stop producing outputs (and continuations). The @Either@ monad gives\nrise to MSFs that end with a result (akin to Tasks in Yampa, and Monadic\nFRP).\n\nFlattening, that is, going from some structure @MSF (t m) a b@ to @MSF m a b@\nfor a specific transformer @t@ often gives rise to known FRP constructs. For\ninstance, flattening with @EitherT@ gives rise to switching, and flattening\nwith @ListT@ gives rise to parallelism with broadcasting.\n\nMSFs can be used to implement many FRP variants, including Arrowized FRP,\nClassic FRP, and plain reactive programming. Arrowized and applicative\nsyntax are both supported.\n\nFor a very detailed introduction to MSFs, see:\n<http://dl.acm.org/citation.cfm?id=2976010>\n(mirror: <http://www.cs.nott.ac.uk/~psxip1/#FRPRefactored>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          ];
        buildable = true;
        };
      tests = {
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          buildable = if !flags.test-hlint then false else true;
          };
        "haddock-coverage" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doc-coverage)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            ];
          buildable = if !flags.test-doc-coverage then false else true;
          };
        };
      };
    }