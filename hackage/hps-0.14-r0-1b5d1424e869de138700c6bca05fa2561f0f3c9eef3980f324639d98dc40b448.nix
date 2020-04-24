{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-exec = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hps"; version = "0.14"; };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2006-2013";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape and others";
      homepage = "http://rd.slavepianos.org/?t=hps";
      url = "";
      synopsis = "Haskell Postscript";
      description = "Haskell library partially implementing the\npostscript drawing model.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hcg-minus" or ((hsPkgs.pkgs-errors).buildDepError "hcg-minus"))
          ];
        buildable = true;
        };
      exes = {
        "hps-fractals" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hcg-minus" or ((hsPkgs.pkgs-errors).buildDepError "hcg-minus"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = if !flags.build-exec then false else true;
          };
        };
      };
    }