{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "diagrams-pgf"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "c.chalmers@me.com";
      author = "Christopher Chalmers";
      homepage = "http://github.com/cchalmers/diagrams-pgf";
      url = "";
      synopsis = "PGF backend for diagrams drawing EDSL.";
      description = "This package provides a modular backend for rendering diagrams created\nwith the diagrams EDSL using the TeX library PGF.\n\nSupport for rendering LaTeX, ConTeXt and plain TeX files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-builder)
          (hsPkgs.containers)
          (hsPkgs.colour)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.split)
          (hsPkgs.texrunner)
          (hsPkgs.time)
          (hsPkgs.JuicyPixels)
          (hsPkgs.vector)
          (hsPkgs.zlib)
          ];
        };
      };
    }