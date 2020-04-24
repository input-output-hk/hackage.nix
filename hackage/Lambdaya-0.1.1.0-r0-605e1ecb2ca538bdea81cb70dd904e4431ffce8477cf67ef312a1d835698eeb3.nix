{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Lambdaya"; version = "0.1.1.0"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "luka.rahne@gmail.com";
      author = "Luka Rahne";
      homepage = "";
      url = "";
      synopsis = "Library for RedPitaya";
      description = "Native library for RedPitaya that runs on RedPitaya.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }