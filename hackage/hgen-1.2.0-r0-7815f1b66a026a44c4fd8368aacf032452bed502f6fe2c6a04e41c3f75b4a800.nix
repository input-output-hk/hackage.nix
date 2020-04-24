{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { static = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hgen"; version = "1.2.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "areces@loria.fr";
      author = "Carlos Areces and Juan Heguiabehere";
      homepage = "http://www.glyc.dc.uba.ar/intohylo/hgen.php";
      url = "";
      synopsis = "Random generation of modal and hybrid logic formulas";
      description = "Random generation of modal and hybrid logic formulas";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hgen" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."hylolib" or ((hsPkgs.pkgs-errors).buildDepError "hylolib"))
            (hsPkgs."hylolib" or ((hsPkgs.pkgs-errors).buildDepError "hylolib"))
            ];
          buildable = true;
          };
        };
      };
    }