{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hsc3-forth"; version = "0.15"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2014";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/t/hsc3-forth";
      url = "";
      synopsis = "FORTH SUPERCOLLIDER";
      description = "FORTH SUPERCOLLIDER";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsc3-forth" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
            (hsPkgs."hsc3" or ((hsPkgs.pkgs-errors).buildDepError "hsc3"))
            (hsPkgs."hsc3-db" or ((hsPkgs.pkgs-errors).buildDepError "hsc3-db"))
            (hsPkgs."hsc3-dot" or ((hsPkgs.pkgs-errors).buildDepError "hsc3-dot"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }