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
      specVersion = "1.6";
      identifier = { name = "simpleprelude"; version = "1.0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jmg@cs.uni-kl.de";
      author = "Jean-Marie Gaillourdet";
      homepage = "";
      url = "";
      synopsis = "A simplified Haskell prelude for teaching";
      description = "simpleprelude provides an alternative Prelude\nmodule for teaching as well as wrappers for ghc,\nand ghci to use them.\n\nThe simplified Prelude omits the type classes\nNum, Integral, and Ord. Instead it provides\nmonomorphically typed arithmetic operators on\nInteger.\n\nIt also provides two executables: simple-ghc and\nsimple-ghci which are wrappers around ghc and\nghci. They are pre-configured to use the Prelude\nmodule of this library instead of base's Prelude\nmodule.\n\nRelease History:\n\n- 1.0.1.1: Fixing missing operator precedences\n- 1.0.1.0: Add a Haskell pre-processor to restore\nthe feel of an implicityly imported Prelude although\nwe use -XNoImplicitPrelude.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "simple-ghc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            ];
          buildable = true;
          };
        "simple-ghci" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            ];
          buildable = true;
          };
        "simple-pp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            ];
          buildable = true;
          };
        };
      };
    }