{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-secure-cookies"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "© حبيب الامين ‪2017";
      maintainer = "ha.alamin@gmail.com";
      author = "Habib Alamin";
      homepage = "https://github.com/habibalamin/wai-secure-cookies";
      url = "";
      synopsis = "";
      description = "WAI middleware to automatically encrypt and sign cookies";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          ];
        buildable = true;
        };
      exes = {
        "waicookie-genkey" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
            ];
          buildable = true;
          };
        };
      tests = {
        "wai-secure-cookies-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."wai-secure-cookies" or ((hsPkgs.pkgs-errors).buildDepError "wai-secure-cookies"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or ((hsPkgs.pkgs-errors).buildDepError "hspec-expectations"))
            (hsPkgs."hspec-wai" or ((hsPkgs.pkgs-errors).buildDepError "hspec-wai"))
            ];
          buildable = true;
          };
        };
      };
    }