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
      specVersion = "1.8";
      identifier = {
        name = "implicit";
        version = "0.2.0";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Julia Longtin <julial@turinglace.com>";
      author = "Christopher Olah";
      homepage = "http://kalli1.faikvm.com/ImplicitCAD/Stable";
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
          (hsPkgs.parsec)
          (hsPkgs.unordered-containers)
          (hsPkgs.parallel)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.vector-space)
          (hsPkgs.text)
          (hsPkgs.monads-tf)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-builder)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-markup)
          (hsPkgs.blaze-svg)
          (hsPkgs.storable-endian)
          (hsPkgs.JuicyPixels)
          (hsPkgs.NumInstances)
          (hsPkgs.criterion)
          (hsPkgs.snap-core)
          (hsPkgs.snap-server)
          (hsPkgs.silently)
          (hsPkgs.transformers)
          (hsPkgs.hspec)
        ];
      };
      exes = {
        "extopenscad" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.vector-space)
            (hsPkgs.filepath)
            (hsPkgs.parallel)
            (hsPkgs.optparse-applicative)
            (hsPkgs.implicit)
          ];
        };
        "implicitsnap" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector-space)
            (hsPkgs.text)
            (hsPkgs.JuicyPixels)
            (hsPkgs.blaze-builder)
            (hsPkgs.blaze-svg)
            (hsPkgs.blaze-markup)
            (hsPkgs.parallel)
            (hsPkgs.deepseq)
            (hsPkgs.vector-space)
            (hsPkgs.monads-tf)
            (hsPkgs.bytestring)
            (hsPkgs.storable-endian)
            (hsPkgs.parsec)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.silently)
            (hsPkgs.transformers)
            (hsPkgs.implicit)
          ];
        };
        "Benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.JuicyPixels)
            (hsPkgs.blaze-svg)
            (hsPkgs.blaze-markup)
            (hsPkgs.parallel)
            (hsPkgs.deepseq)
            (hsPkgs.vector-space)
            (hsPkgs.monads-tf)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.storable-endian)
            (hsPkgs.parsec)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.criterion)
            (hsPkgs.transformers)
            (hsPkgs.implicit)
          ];
        };
      };
      tests = {
        "test-implicit" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.parsec)
            (hsPkgs.implicit)
          ];
        };
      };
      benchmarks = {
        "parser-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.random)
            (hsPkgs.parsec)
            (hsPkgs.implicit)
          ];
        };
      };
    };
  }