{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "xlsx-tabular"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Kazuo Koga";
      maintainer = "obiwanko@me.com";
      author = "Kazuo Koga";
      homepage = "http://github.com/kkazuo/xlsx-tabular#readme";
      url = "";
      synopsis = "Xlsx table decode utility";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."xlsx" or ((hsPkgs.pkgs-errors).buildDepError "xlsx"))
          ];
        buildable = true;
        };
      tests = {
        "xlsx-tabular-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xlsx-tabular" or ((hsPkgs.pkgs-errors).buildDepError "xlsx-tabular"))
            ];
          buildable = true;
          };
        };
      };
    }