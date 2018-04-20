{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "data-cell";
          version = "1.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2015 Patryk Zadarnowski";
        maintainer = "Patryk Zadarnowski <pat@jantar.org>";
        author = "Patryk Zadarnowski";
        homepage = "https://github.com/zadarnowski/data-cell";
        url = "";
        synopsis = "Generic cellular data representation library";
        description = "This library defines a trivial type used for streaming\nof tabular data using coinductive control structures\nsuch as pipes, conduit or iteratees with a guaranteed\nconstant memory usage.\nIn this structure, each /cell/ of data is annotated\nwith information about its relation to the following\ncell in the stream, namely /end of cell/, /end of row/\nand /end of table/ conditions. In addition, in order\nto achieve truly-constant memory usage irrespective of\nindividual cell size, we allow individual cells to be\nsubdivided further into /parts/, as indicated by the\n/end of part/ condition. Logically, this subdivision\ninto parts is supposed to be purely operational and\nhave no semantic significance, similarly to subdivision\nof lazy bytestrings into chunks.";
        buildType = "Simple";
      };
      components = {
        data-cell = {
          depends  = [ hsPkgs.base ];
        };
      };
    }