{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "enum-text-rio"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Chris Dornan";
      maintainer = "chris@chrisdornan.com";
      author = "Chris Dornan";
      homepage = "https://github.com/cdornan/enum-text-rio#readme";
      url = "";
      synopsis = "Making fmt available with rio";
      description = "Please see the README on GitHub at <https://github.com/cdornan/enum-text-rio#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."enum-text" or ((hsPkgs.pkgs-errors).buildDepError "enum-text"))
          (hsPkgs."fmt" or ((hsPkgs.pkgs-errors).buildDepError "fmt"))
          (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "demo-enum-text-rio" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."enum-text" or ((hsPkgs.pkgs-errors).buildDepError "enum-text"))
            (hsPkgs."enum-text-rio" or ((hsPkgs.pkgs-errors).buildDepError "enum-text-rio"))
            (hsPkgs."fmt" or ((hsPkgs.pkgs-errors).buildDepError "fmt"))
            (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }