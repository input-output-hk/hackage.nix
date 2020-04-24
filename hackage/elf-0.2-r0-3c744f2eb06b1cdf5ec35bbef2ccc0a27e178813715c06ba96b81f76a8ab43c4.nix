{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "elf"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Erik Charlebois";
      maintainer = "Erik Charlebois <erikcharlebois@gmail.com>";
      author = "Erik Charlebois";
      homepage = "";
      url = "";
      synopsis = "Parser for ELF object format.";
      description = "Parser for ELF object format.";
      buildType = "Custom";
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
      };
    }