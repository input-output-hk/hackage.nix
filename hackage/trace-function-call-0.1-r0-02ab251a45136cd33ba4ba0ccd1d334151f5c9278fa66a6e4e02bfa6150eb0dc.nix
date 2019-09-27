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
      specVersion = "1.2";
      identifier = { name = "trace-function-call"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "© Dave Hinton 2011";
      maintainer = "beakerchu@googlemail.com";
      author = "Dave Hinton";
      homepage = "";
      url = "";
      synopsis = "Easy lightweight tracing of function arguments and results for ad hoc debugging";
      description = "Example:\n\nYou have a pure function that may be giving you incorrect results.\n\n> fib :: Int -> Int\n> fib n | n < 2     = n\n>       | otherwise = fib (n-1) - fib (n-2)\n\n>>> fib 3\n0\n\nInsert a call to @traceFunction@ to aid with debugging.\n\n> fib, fib' :: Int -> Int\n> fib = traceFunction \"fib\" fib'\n> fib' n | n < 2     = n\n>        | otherwise = fib (n-1) - fib (n-2)\n\nCalls to your pure function now provide its parameters and result as debugging information.\n\n>>> fib 3\nfib 1 = 1\nfib 0 = 0\nfib 2 = 1\nfib 1 = 1\nfib 3 = 0\n0\n\nHopefully this will help you home in on your bug.\n\nNote that @traceFunction@ works with functions of more than one parameter...\n\n> traceElem :: Eq a => a -> [a] -> Bool\n> traceElem = traceFunction \"elem\" elem\n\n...and with \\\"functions\\\" of no parameters at all.\n\n> alpha = traceFunction \"Fine-structure constant\" \$ e * e * c * mu0 / 2 / h\n\nParameters and results must implement the 'Show' typeclass. As a special case, parameters may instead be\nfunctions, and are shown as an underscore (@_@).\n\n>>> :set -XNoMonomorphismRestriction\n>>> let map' = traceFunction \"map\" map\n>>> map' (2 *) [1..3]\nmap _ [1,2,3] = [2,4,6]\n[2,4,6]\n\nKNOWN BUG: The resultant function is strict, even when the input function is non-strict in some of its\nparameters. In particular,\n\n*  if one of the parameters is @error \\\"foo\\\"@, the return value when the resultant function call is\nevaluated will be @error \\\"foo\\\"@; no trace message will be output\n\n*  if one of the parameters doesn't terminate when evaluated, the resultant function call will not\nterminate when evaluated either; no trace message will be output";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      };
    }