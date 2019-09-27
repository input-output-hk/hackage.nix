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
      identifier = { name = "ixdopp"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2008, Jesse A. Tov";
      maintainer = "tov@ccs.neu.edu";
      author = "Jesse A. Tov <tov@ccs.neu.edu>";
      homepage = "http://www.ccs.neu.edu/~tov/session-types";
      url = "";
      synopsis = "A preprocessor for expanding \"ixdo\" notation for indexed monads";
      description = "This preprocessor expands a Haskell program using \"ixdo\" notation\ninto a Haskell program using the indexed monad bind operator\n(>>>=).  It also serves as an example for the preprocessor-tools\npackage.\n\nWhile GHC 6.10 can now expand do-notation when (>>=) is rebound\nat a non-standard type, this makes it difficult to use\ndo-notation for both monads and custom monad-like structures in\nthe same compilation module.  This preprocessor makes it easy to\nuse do-like syntax for indexed monads while retaining \"do\" for\nmonads.\n\nIf installed in ~/.cabal, then ~/.cabal/bin must be in the path\nfor GHC to find it from a -pgmF flag.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ixdopp" = {
          depends = [
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."preprocessor-tools" or (buildDepError "preprocessor-tools"))
            ];
          buildable = true;
          };
        };
      };
    }