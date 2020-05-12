{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "implicit"; version = "0.0.2"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."hashmap" or (errorHandler.buildDepError "hashmap"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."plugins" or (errorHandler.buildDepError "plugins"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      exes = { "extopenscad" = { buildable = true; }; };
      };
    }