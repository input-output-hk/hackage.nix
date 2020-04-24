{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-openflow"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brooks.brian@gmail.com";
      author = "Brian Brooks";
      homepage = "https://github.com/brooksbp/haskell-openflow";
      url = "";
      synopsis = "OpenFlow protocol in Haskell";
      description = "OpenFlow assists in network virtualization where multiple\nisolated logical networks can share physical hardware.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."network-info" or ((hsPkgs.pkgs-errors).buildDepError "network-info"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          ];
        buildable = true;
        };
      tests = {
        "test-main" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell-openflow" or ((hsPkgs.pkgs-errors).buildDepError "haskell-openflow"))
            ];
          buildable = true;
          };
        };
      };
    }