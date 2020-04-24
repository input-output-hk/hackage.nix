{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "multiaddr"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Micxjo Funkcio";
      maintainer = "Micxjo Funkcio <micxjo@fastmail.com>";
      author = "Micxjo Funkcio <micxjo@fastmail.com>";
      homepage = "http://github.com/micxjo/hs-multiaddr";
      url = "";
      synopsis = "A network address format";
      description = "Multiaddr is a self-describing network address format\nsupporting a variety of protocols, with both string\nand binary representations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."base58-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base58-bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "multiaddr-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."multiaddr" or ((hsPkgs.pkgs-errors).buildDepError "multiaddr"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }