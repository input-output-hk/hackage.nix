{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "linear";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/linear/";
        url = "";
        synopsis = "Linear Algebra";
        description = "Types and combinators for low-dimension-count linear algebra on free vectors spaces";
        buildType = "Simple";
      };
      components = {
        linear = {
          depends  = [
            hsPkgs.base
            hsPkgs.distributive
            hsPkgs.lens
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
        };
      };
    }