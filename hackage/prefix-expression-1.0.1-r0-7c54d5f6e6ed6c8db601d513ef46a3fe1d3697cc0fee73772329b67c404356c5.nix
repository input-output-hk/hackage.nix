{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "prefix-expression"; version = "1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "Copyright: ©  2018 Vonfry";
      maintainer = "vonfry314@gmail.com";
      author = "Vonfry";
      homepage = "https://github.com/VonFry/prefix-expression";
      url = "";
      synopsis = "";
      description = "convert infix to prefix expression";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."regex-pcre-builtin" or ((hsPkgs.pkgs-errors).buildDepError "regex-pcre-builtin"))
          ];
        buildable = true;
        };
      tests = {
        "Test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."prefix-expression" or ((hsPkgs.pkgs-errors).buildDepError "prefix-expression"))
            ];
          buildable = true;
          };
        };
      };
    }