{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test-doctests = true;
      lib-werror = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "log-domain";
          version = "0.5.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/analytics/log-domain/";
        url = "";
        synopsis = "Log-domain arithmetic";
        description = "This package provides log-domain floats, doubles and complex numbers.";
        buildType = "Custom";
      };
      components = {
        log-domain = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.cereal
            hsPkgs.comonad
            hsPkgs.deepseq
            hsPkgs.distributive
            hsPkgs.generic-deriving
            hsPkgs.hashable
            hsPkgs.hashable-extras
            hsPkgs.semigroupoids
            hsPkgs.semigroups
            hsPkgs.safecopy
            hsPkgs.vector
          ];
        };
        tests = {
          doctests = {
            depends  = optionals (!(!_flags.test-doctests)) [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.generic-deriving
              hsPkgs.semigroups
              hsPkgs.simple-reflect
            ];
          };
        };
      };
    }