{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "chp-mtl"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "University of Kent, 2008--2010";
      maintainer = "neil@twistedsquare.com";
      author = "Neil Brown";
      homepage = "http://www.cs.kent.ac.uk/projects/ofa/chp/";
      url = "";
      synopsis = "MTL class instances for the CHP library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."chp" or ((hsPkgs.pkgs-errors).buildDepError "chp"))
          (hsPkgs."chp-plus" or ((hsPkgs.pkgs-errors).buildDepError "chp-plus"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }