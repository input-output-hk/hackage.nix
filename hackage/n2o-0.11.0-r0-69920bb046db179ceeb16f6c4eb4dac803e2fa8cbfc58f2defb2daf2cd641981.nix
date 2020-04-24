{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "n2o"; version = "0.11.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Marat Khafizov (c)";
      maintainer = "xafizoff@gmail.com";
      author = "Marat Khafizov";
      homepage = "https://github.com/xafizoff/n2o#readme";
      url = "";
      synopsis = "Abstract Protocol Loop";
      description = "Embeddable Application Protocol Loop";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "n2o-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."n2o" or ((hsPkgs.pkgs-errors).buildDepError "n2o"))
            (hsPkgs."bert" or ((hsPkgs.pkgs-errors).buildDepError "bert"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }