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
      specVersion = "1.10";
      identifier = { name = "hs-multiaddr"; version = "0.1.4"; };
      license = "Apache-2.0";
      copyright = "(c) Matrix AI 2017";
      maintainer = "roger.qiu@matrix.ai";
      author = "CMCDragonkai,\nQuoc-An Ho";
      homepage = "https://github.com/MatrixAI/hs-multiaddr#readme";
      url = "";
      synopsis = "Multiaddr library";
      description = "Multiaddr is self-describing way to represent addresses that support any standard network protocol. Multiaddr has a binary packed format, and nice string representation. It is possible to encapsulate addresses within each other.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytes" or (buildDepError "bytes"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hs-multihash" or (buildDepError "hs-multihash"))
          (hsPkgs."iproute" or (buildDepError "iproute"))
          (hsPkgs."sandi" or (buildDepError "sandi"))
          ];
        };
      tests = {
        "hs-multiaddr-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."hs-multiaddr" or (buildDepError "hs-multiaddr"))
            (hsPkgs."hs-multihash" or (buildDepError "hs-multihash"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."iproute" or (buildDepError "iproute"))
            (hsPkgs."sandi" or (buildDepError "sandi"))
            ];
          };
        };
      };
    }