{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cfenv"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018, Tom Oram";
      maintainer = "tom@x2k.com";
      author = "Tom Oram";
      homepage = "https://github.com/tomphp/haskell-cfenv#readme";
      url = "";
      synopsis = "A library getting the environment when running on Cloud Foundry";
      description = "This is a port of go-cfenv for Golang. The purpose of this library is to assist you in writing Haskell apps that run on Cloud Foundry. It provides convenience functions and structures that map to Cloud Foundry environment variable primitives.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "cfenv-test" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cfenv" or ((hsPkgs.pkgs-errors).buildDepError "cfenv"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."raw-strings-qq" or ((hsPkgs.pkgs-errors).buildDepError "raw-strings-qq"))
            ];
          buildable = true;
          };
        };
      };
    }