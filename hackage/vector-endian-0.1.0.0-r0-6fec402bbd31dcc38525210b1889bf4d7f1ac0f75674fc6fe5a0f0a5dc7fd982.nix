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
      specVersion = "2.2";
      identifier = { name = "vector-endian"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Ian Denhardt";
      maintainer = "ian@zenhack.net";
      author = "Ian Denhardt";
      homepage = "https://git.zenhack.net/zenhack/haskell-vector-endian";
      url = "";
      synopsis = "Storable vectors with cpu-independent representation.";
      description = "This package exposes data types that implement the type classes from the\nvector package, but the vectors have an in-memory representation that\nis independent of the host's CPU.\n\nThis makes the data stored within them suitable for storage or transmission\nover a network, and they can be converted to bytestrings without copying.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."zenhack-prelude" or (buildDepError "zenhack-prelude"))
          (hsPkgs."cpu" or (buildDepError "cpu"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."endian-common" or (buildDepError "endian-common"))
          (hsPkgs."vector-endian-big" or (buildDepError "vector-endian-big"))
          (hsPkgs."vector-endian-little" or (buildDepError "vector-endian-little"))
          ];
        };
      sublibs = {
        "endian-common" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."zenhack-prelude" or (buildDepError "zenhack-prelude"))
            (hsPkgs."cpu" or (buildDepError "cpu"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          };
        "little-endian" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."zenhack-prelude" or (buildDepError "zenhack-prelude"))
            (hsPkgs."cpu" or (buildDepError "cpu"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."endian-common" or (buildDepError "endian-common"))
            ];
          };
        "big-endian" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."zenhack-prelude" or (buildDepError "zenhack-prelude"))
            (hsPkgs."cpu" or (buildDepError "cpu"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."endian-common" or (buildDepError "endian-common"))
            ];
          };
        "vector-endian-indef" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."zenhack-prelude" or (buildDepError "zenhack-prelude"))
            (hsPkgs."cpu" or (buildDepError "cpu"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."endian-common" or (buildDepError "endian-common"))
            ];
          };
        "vector-endian-little" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."zenhack-prelude" or (buildDepError "zenhack-prelude"))
            (hsPkgs."cpu" or (buildDepError "cpu"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."vector-endian-indef" or (buildDepError "vector-endian-indef"))
            (hsPkgs."little-endian" or (buildDepError "little-endian"))
            ];
          };
        "vector-endian-big" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."zenhack-prelude" or (buildDepError "zenhack-prelude"))
            (hsPkgs."cpu" or (buildDepError "cpu"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."vector-endian-indef" or (buildDepError "vector-endian-indef"))
            (hsPkgs."big-endian" or (buildDepError "big-endian"))
            ];
          };
        };
      };
    }