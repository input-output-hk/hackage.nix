{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "multihash-serialise"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Monadic GmbH";
      maintainer = "Kim Altintop <kim@monadic.xyz>, Monadic Team <team@monadic.xyz>";
      author = "Kim Altintop";
      homepage = "https://github.com/oscoin/ipfs";
      url = "";
      synopsis = "CBOR encoding of multihashes";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          (hsPkgs."multibase" or ((hsPkgs.pkgs-errors).buildDepError "multibase"))
          (hsPkgs."multihash-cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "multihash-cryptonite"))
          (hsPkgs."serialise" or ((hsPkgs.pkgs-errors).buildDepError "serialise"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."multihash-serialise" or ((hsPkgs.pkgs-errors).buildDepError "multihash-serialise"))
            (hsPkgs."serialise" or ((hsPkgs.pkgs-errors).buildDepError "serialise"))
            ];
          buildable = true;
          };
        };
      };
    }