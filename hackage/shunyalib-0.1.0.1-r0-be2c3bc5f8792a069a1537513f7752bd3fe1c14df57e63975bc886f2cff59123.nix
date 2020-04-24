{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "shunyalib"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 penguinshunya";
      maintainer = "penguinshunya@hotmail.com";
      author = "penguinshunya";
      homepage = "https://github.com/penguinshunya/shunyalib";
      url = "";
      synopsis = "Initial project template from stack";
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
      };
    }