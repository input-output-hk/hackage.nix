{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "implicit";
        version = "0.0.3";
      };
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
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parsec)
          (hsPkgs.unordered-containers)
          (hsPkgs.parallel)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.vector-space)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-markup)
          (hsPkgs.blaze-svg)
          (hsPkgs.storable-endian)
          (hsPkgs.JuicyPixels)
        ];
      };
      exes = { "extopenscad" = {}; };
    };
  }