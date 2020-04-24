{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "elf"; version = "0.29"; };
      license = "BSD-3-Clause";
      copyright = "Erik Charlebois";
      maintainer = "Baojun Wang <wangbj@gmail.com>";
      author = "Erik Charlebois";
      homepage = "https://github.com/wangbj/elf";
      url = "";
      synopsis = "An Elf parser";
      description = "Parser for ELF object format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."elf" or ((hsPkgs.pkgs-errors).buildDepError "elf"))
            ];
          buildable = true;
          };
        };
      };
    }