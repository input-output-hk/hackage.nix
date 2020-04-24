{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytes" or ((hsPkgs.pkgs-errors).buildDepError "bytes"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hs-multihash" or ((hsPkgs.pkgs-errors).buildDepError "hs-multihash"))
          (hsPkgs."iproute" or ((hsPkgs.pkgs-errors).buildDepError "iproute"))
          (hsPkgs."sandi" or ((hsPkgs.pkgs-errors).buildDepError "sandi"))
          ];
        buildable = true;
        };
      tests = {
        "hs-multiaddr-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."either-unwrap" or ((hsPkgs.pkgs-errors).buildDepError "either-unwrap"))
            (hsPkgs."hs-multiaddr" or ((hsPkgs.pkgs-errors).buildDepError "hs-multiaddr"))
            (hsPkgs."hs-multihash" or ((hsPkgs.pkgs-errors).buildDepError "hs-multihash"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."iproute" or ((hsPkgs.pkgs-errors).buildDepError "iproute"))
            (hsPkgs."sandi" or ((hsPkgs.pkgs-errors).buildDepError "sandi"))
            ];
          buildable = true;
          };
        };
      };
    }