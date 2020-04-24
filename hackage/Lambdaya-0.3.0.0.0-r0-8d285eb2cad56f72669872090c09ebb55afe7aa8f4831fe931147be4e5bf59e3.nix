{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Lambdaya"; version = "0.3.0.0.0"; };
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
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."pipes-network" or ((hsPkgs.pkgs-errors).buildDepError "pipes-network"))
          (hsPkgs."pipes-binary" or ((hsPkgs.pkgs-errors).buildDepError "pipes-binary"))
          (hsPkgs."pipes-parse" or ((hsPkgs.pkgs-errors).buildDepError "pipes-parse"))
          ] ++ (pkgs.lib).optional (system.isArm) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"));
        buildable = true;
        };
      };
    }