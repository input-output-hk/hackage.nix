{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hs-multiaddr"; version = "0.1.0.1"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytes" or ((hsPkgs.pkgs-errors).buildDepError "bytes"))
          (hsPkgs."sandi" or ((hsPkgs.pkgs-errors).buildDepError "sandi"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."iproute" or ((hsPkgs.pkgs-errors).buildDepError "iproute"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."multihash" or ((hsPkgs.pkgs-errors).buildDepError "multihash"))
          ];
        buildable = true;
        };
      tests = {
        "haskell-multiaddr-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hs-multiaddr" or ((hsPkgs.pkgs-errors).buildDepError "hs-multiaddr"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."iproute" or ((hsPkgs.pkgs-errors).buildDepError "iproute"))
            (hsPkgs."sandi" or ((hsPkgs.pkgs-errors).buildDepError "sandi"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."multihash" or ((hsPkgs.pkgs-errors).buildDepError "multihash"))
            (hsPkgs."either-unwrap" or ((hsPkgs.pkgs-errors).buildDepError "either-unwrap"))
            ];
          buildable = true;
          };
        };
      };
    }