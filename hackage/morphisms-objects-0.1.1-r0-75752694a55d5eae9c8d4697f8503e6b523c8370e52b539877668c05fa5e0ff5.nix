{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "morphisms-objects"; version = "0.1.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2018 Murat Kasimov";
      maintainer = "Murat Kasimov <iokasimov.m@gmail.com>";
      author = "Murat Kasimov";
      homepage = "https://github.com/iokasimov/morphisms-objects";
      url = "";
      synopsis = "Algebraic structures";
      description = "Attempt to define algebraic structures in more robust and useful way.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."morphisms" or ((hsPkgs.pkgs-errors).buildDepError "morphisms"))
          ];
        buildable = true;
        };
      };
    }