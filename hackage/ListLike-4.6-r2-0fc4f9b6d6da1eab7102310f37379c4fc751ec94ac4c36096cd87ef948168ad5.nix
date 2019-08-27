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
      specVersion = "1.8";
      identifier = { name = "ListLike"; version = "4.6"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007-2008 John Goerzen";
      maintainer = "John Lato <jwlato@gmail.com>";
      author = "John Goerzen";
      homepage = "http://github.com/JohnLato/listlike";
      url = "";
      synopsis = "Generic support for list-like structures";
      description = "Generic support for list-like structures in Haskell.\n\nThe ListLike module provides a common interface to the various Haskell\ntypes that are list-like.  Predefined interfaces include standard\nHaskell lists, Arrays, ByteStrings, and lazy ByteStrings.  Custom\ntypes can easily be made ListLike instances as well.\n\nListLike also provides for String-like types, such as String and\nByteString, for types that support input and output, and for types that can handle\ninfinite lists.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."fmlist" or (buildDepError "fmlist"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.4")) (hsPkgs."semigroups" or (buildDepError "semigroups"));
        };
      tests = {
        "listlike-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ListLike" or (buildDepError "ListLike"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dlist" or (buildDepError "dlist"))
            (hsPkgs."fmlist" or (buildDepError "fmlist"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.4")) (hsPkgs."semigroups" or (buildDepError "semigroups"));
          };
        };
      };
    }