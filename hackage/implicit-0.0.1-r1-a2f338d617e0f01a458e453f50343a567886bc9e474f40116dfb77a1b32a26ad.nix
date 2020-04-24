{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "implicit"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Christopher Olah <chris@colah.ca>";
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
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."hashmap" or ((hsPkgs.pkgs-errors).buildDepError "hashmap"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          ];
        buildable = true;
        };
      exes = { "extopenscad" = { buildable = true; }; };
      };
    }