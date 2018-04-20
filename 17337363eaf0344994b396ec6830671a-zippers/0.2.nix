{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zippers";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/zippers/";
        url = "";
        synopsis = "Traversal based zippers";
        description = "Traversal based zippers";
        buildType = "Custom";
      };
      components = {
        zippers = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.profunctors
            hsPkgs.semigroupoids
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