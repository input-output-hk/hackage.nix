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
    flags = { base4_2 = true; mtl2 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "random-fu"; version = "0.1.4"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "https://github.com/mokus0/random-fu";
      url = "";
      synopsis = "Random number generation";
      description = "Random number generation based on modeling random\nvariables in two complementary ways: first, by the\nparameters of standard mathematical distributions and,\nsecond, by an abstract type ('RVar') which can be\ncomposed and manipulated monadically and sampled in\neither monadic or \\\"pure\\\" styles.\nThe primary purpose of this library is to support\ndefining and sampling a wide variety of high quality\nrandom variables.  Quality is prioritized over speed,\nbut performance is an important goal too.\nIn my testing, I have found it capable of speed\ncomparable to other Haskell libraries, but still\na fair bit slower than straight C implementations of\nthe same algorithms.\nWarning to anyone upgrading from \\\"< 0.1\\\": 'Discrete'\nhas been renamed 'Categorical', the entropy source\nclasses have been redesigned, and many things are no\nlonger exported from the root module \"Data.Random\"\n(In particular, DevRandom - this is not available on\nwindows, so it will likely move to its own package\neventually so that client code dependencies on it will\nbe made explicit).\nSupport for \"base\" packages earlier than version 4\n(and thus GHC releases earlier than 6.10) has been\ndropped, as too many of this package's dependencies do\nnot support older versions.\nThe \"Data.Random\" module itself should now have a\nrelatively stable interface, but the other modules\nare still subject to change.  Specifically, I am\nconsidering hiding data constructors for most or all\nof the distributions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mersenne-random-pure64" or (buildDepError "mersenne-random-pure64"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."MonadPrompt" or (buildDepError "MonadPrompt"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
          (hsPkgs."stateref" or (buildDepError "stateref"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ] ++ [ (hsPkgs."base" or (buildDepError "base")) ]) ++ [
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ]) ++ (if system.isWindows
          then [ (hsPkgs."erf-native" or (buildDepError "erf-native")) ]
          else [ (hsPkgs."erf" or (buildDepError "erf")) ]);
        };
      };
    }