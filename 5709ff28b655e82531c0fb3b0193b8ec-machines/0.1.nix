{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "machines";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett, Rúnar Bjarnason";
        homepage = "http://github.com/ekmett/machines/";
        url = "";
        synopsis = "Networked stream transducers";
        description = "Networked stream transducers";
        buildType = "Simple";
      };
      components = {
        machines = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.comonad
            hsPkgs.containers
            hsPkgs.free
            hsPkgs.profunctors
            hsPkgs.semigroups
            hsPkgs.transformers
            hsPkgs.mtl
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