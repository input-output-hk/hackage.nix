{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hsc3-plot"; version = "0.15"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape and others, 2013-2014";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/t/hsc3-plot";
      url = "";
      synopsis = "Haskell SuperCollider Plotting";
      description = "Plotting functions for hsc3";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
          (hsPkgs."hsc3" or ((hsPkgs.pkgs-errors).buildDepError "hsc3"))
          (hsPkgs."hsc3-lang" or ((hsPkgs.pkgs-errors).buildDepError "hsc3-lang"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }