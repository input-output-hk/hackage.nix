{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "acme-smuggler"; version = "1.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2018 Ben Clifford";
      maintainer = "Ben Clifford <benc@hawaga.org.uk>";
      author = "Ben Clifford <benc@hawaga.org.uk>";
      homepage = "https://github.com/benclifford/acme-smuggler";
      url = "";
      synopsis = "Smuggle arbitrary values in arbitrary types";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "acme-smuggler-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."acme-smuggler" or ((hsPkgs.pkgs-errors).buildDepError "acme-smuggler"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }