{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "junit-xml"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Jasper Woudenberg";
      maintainer = "mail@jasperwoudenberg.com";
      author = "Jasper Woudenberg";
      homepage = "https://github.com/jwoudenberg/junit-xml#readme";
      url = "";
      synopsis = "Producing JUnit-style XML test reports.";
      description = "Please see the README at <https://github.com/jwoudenberg/junit-xml>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."junit-xml" or ((hsPkgs.pkgs-errors).buildDepError "junit-xml"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-golden" or ((hsPkgs.pkgs-errors).buildDepError "tasty-golden"))
            ];
          buildable = true;
          };
        };
      };
    }