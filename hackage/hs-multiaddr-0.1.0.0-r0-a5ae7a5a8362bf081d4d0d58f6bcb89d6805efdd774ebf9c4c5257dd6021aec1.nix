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
      identifier = { name = "hs-multiaddr"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Roger Qiu";
      maintainer = "roger.qiu@matrix.ai";
      author = "CMCDragonkai";
      homepage = "https://github.com/MatrixAI/haskell-multiaddr#readme";
      url = "";
      synopsis = "Multiaddr Library for LibP2P";
      description = "Multiaddr is self-describing way to represent addresses that support any standard network protocol.\nMultiaddr has a binary packed format, and nice string representation.\nIt is possible to encapsulate addresses within each other.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytes" or (buildDepError "bytes"))
          (hsPkgs."sandi" or (buildDepError "sandi"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."iproute" or (buildDepError "iproute"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."multihash" or (buildDepError "multihash"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."io-streams" or (buildDepError "io-streams"))
          ];
        };
      tests = {
        "haskell-multiaddr-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hs-multiaddr" or (buildDepError "hs-multiaddr"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."iproute" or (buildDepError "iproute"))
            (hsPkgs."sandi" or (buildDepError "sandi"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."multihash" or (buildDepError "multihash"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            ];
          };
        };
      };
    }