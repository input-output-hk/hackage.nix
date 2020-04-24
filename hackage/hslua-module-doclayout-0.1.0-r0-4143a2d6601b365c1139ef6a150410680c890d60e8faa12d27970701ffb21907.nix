{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "hslua-module-doclayout"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2020 Albert Krewinkel";
      maintainer = "Albert Krewinkel <albert@zeitkraut.de>";
      author = "Albert Krewinkel";
      homepage = "https://github.com/hslua/hslua-module-doclayout";
      url = "";
      synopsis = "Lua module wrapping Text.DocLayout.";
      description = "Lua module wrapping @Text.DocLayout@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."doclayout" or ((hsPkgs.pkgs-errors).buildDepError "doclayout"))
          (hsPkgs."hslua" or ((hsPkgs.pkgs-errors).buildDepError "hslua"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "hslua-module-doclayout-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doclayout" or ((hsPkgs.pkgs-errors).buildDepError "doclayout"))
            (hsPkgs."hslua" or ((hsPkgs.pkgs-errors).buildDepError "hslua"))
            (hsPkgs."hslua-module-doclayout" or ((hsPkgs.pkgs-errors).buildDepError "hslua-module-doclayout"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-lua" or ((hsPkgs.pkgs-errors).buildDepError "tasty-lua"))
            (hsPkgs."hslua-module-doclayout" or ((hsPkgs.pkgs-errors).buildDepError "hslua-module-doclayout"))
            ];
          buildable = true;
          };
        };
      };
    }