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
      identifier = { name = "monarch"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
      author = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
      homepage = "https://github.com/notogawa/monarch";
      url = "";
      synopsis = "Monadic interface for TokyoTyrant.";
      description = "This package provides simple monadic interface for TokyoTyrant.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."network-conduit" or (buildDepError "network-conduit"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."msgpack" or (buildDepError "msgpack"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."pool-conduit" or (buildDepError "pool-conduit"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          ];
        };
      tests = {
        "specs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."network-conduit" or (buildDepError "network-conduit"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."msgpack" or (buildDepError "msgpack"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."pool-conduit" or (buildDepError "pool-conduit"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-conduit" or (buildDepError "network-conduit"))
            (hsPkgs."pool-conduit" or (buildDepError "pool-conduit"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."tokyotyrant-haskell" or (buildDepError "tokyotyrant-haskell"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            ];
          };
        };
      };
    }