{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Win32-shortcut"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Piotr Latanowicz";
      maintainer = "piotr.latanowicz@gmail.com";
      author = "Piotr Latanowicz";
      homepage = "https://github.com/opasly-wieprz/Win32-shortcut";
      url = "";
      synopsis = "Support for manipulating shortcuts (.lnk files) on Windows";
      description = "This package provides mechanism for reading and\nwriting Windows shortcuts a.k.a. shell links.\nIt uses COM library under the hood.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."th-utilities" or ((hsPkgs.pkgs-errors).buildDepError "th-utilities"))
          ];
        libs = [
          (pkgs."ole32" or ((hsPkgs.pkgs-errors).sysDepError "ole32"))
          (pkgs."uuid" or ((hsPkgs.pkgs-errors).sysDepError "uuid"))
          ];
        buildable = true;
        };
      };
    }