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
      identifier = { name = "hinze-streams"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Ralf Hinze";
      homepage = "http://code.haskell.org/~dons/code/hinze-streams";
      url = "";
      synopsis = "Streams and Unique Fixed Points";
      description = "Numeric instances for infinite streams. An implementation of:\n\n/Functional Pearl: Streams and Unique Fixed Points/, Ralf Hinze, University of Oxford\n\nStreams, infinite sequences of elements, live in a coworld: they are\ngiven by a coinductive data type, operations on streams are implemented\nby corecursive programs, and proofs are conducted using coinduction. But\nthere is more to it: suitably restricted, stream equations possess\nunique solutions, a fact that is not very widely appreciated. We show\nthat this property gives rise to a simple and attractive proof technique\nessentially bringing equational reasoning to the coworld. In fact, we\nredevelop the theory of recurrences, finite calculus and generating\nfunctions using streams and stream operators building on the cornerstone\nof unique solutions. The development is constructive: streams and stream\noperators are implemented in Haskell, usually by one-liners. The\nresulting calculus or library, if you wish, is elegant and fun to use.\nFinally, we rephrase the proof of uniqueness using generalised algebraic\ndata types.\n\nAlong with the usual instances for infinite streams, this provides:\nNum, Enum, Real, Fractional, as well as recurrences on streams,\nfinite calculus, generators\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."Stream" or (buildDepError "Stream"))
          ];
        buildable = true;
        };
      };
    }