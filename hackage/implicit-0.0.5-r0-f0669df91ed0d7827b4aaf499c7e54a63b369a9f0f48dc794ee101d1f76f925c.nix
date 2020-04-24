{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "implicit"; version = "0.0.5"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Mike MacHenry <mike.machenry@gmail.com>";
      author = "Christopher Olah";
      homepage = "https://github.com/colah/ImplicitCAD";
      url = "";
      synopsis = "Math-inspired programmatic 2&3D CAD: CSG, bevels, and shells; gcode export..";
      description = "A math-inspired programmatic CAD library in haskell.\nBuild objects with constructive solid geometry, bevels,\nshells and more in 2D & 3D. Then export to SVGs, STLs,\nor produce gcode directly!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          (hsPkgs."blaze-svg" or ((hsPkgs.pkgs-errors).buildDepError "blaze-svg"))
          (hsPkgs."storable-endian" or ((hsPkgs.pkgs-errors).buildDepError "storable-endian"))
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."NumInstances" or ((hsPkgs.pkgs-errors).buildDepError "NumInstances"))
          ];
        buildable = true;
        };
      exes = { "extopenscad" = { buildable = true; }; };
      };
    }