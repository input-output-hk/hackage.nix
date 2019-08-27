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
      identifier = { name = "Dust-tools"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "brandon@ischool.utexas.edu";
      author = "Brandon Wiley";
      homepage = "";
      url = "";
      synopsis = "Network filtering exploration tools";
      description = "A set of tools for exploring network filtering";
      buildType = "Simple";
      };
    components = {
      exes = {
        "shaper-server" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Dust" or (buildDepError "Dust"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."entropy" or (buildDepError "entropy"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."random-extras" or (buildDepError "random-extras"))
            (hsPkgs."random-source" or (buildDepError "random-source"))
            (hsPkgs."random-fu" or (buildDepError "random-fu"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          };
        "shaper-client" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Dust" or (buildDepError "Dust"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."entropy" or (buildDepError "entropy"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."random-extras" or (buildDepError "random-extras"))
            (hsPkgs."random-source" or (buildDepError "random-source"))
            (hsPkgs."random-fu" or (buildDepError "random-fu"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          };
        "replay-server" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Dust" or (buildDepError "Dust"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."entropy" or (buildDepError "entropy"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."random-extras" or (buildDepError "random-extras"))
            (hsPkgs."random-source" or (buildDepError "random-source"))
            (hsPkgs."random-fu" or (buildDepError "random-fu"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          };
        "replay-client" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Dust" or (buildDepError "Dust"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."entropy" or (buildDepError "entropy"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."random-extras" or (buildDepError "random-extras"))
            (hsPkgs."random-source" or (buildDepError "random-source"))
            (hsPkgs."random-fu" or (buildDepError "random-fu"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          };
        "compile" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Dust" or (buildDepError "Dust"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."entropy" or (buildDepError "entropy"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."random-extras" or (buildDepError "random-extras"))
            (hsPkgs."random-source" or (buildDepError "random-source"))
            (hsPkgs."random-fu" or (buildDepError "random-fu"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."csv" or (buildDepError "csv"))
            ];
          };
        };
      };
    }