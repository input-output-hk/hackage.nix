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
          name = "approximate";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/analytics/approximate/";
        url = "";
        synopsis = "Approximate discrete values and numbers";
        description = "This package provides approximate discrete values and numbers.";
        buildType = "Custom";
      };
      components = {
        approximate = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytes
            hsPkgs.cereal
            hsPkgs.comonad
            hsPkgs.deepseq
            hsPkgs.ghc-prim
            hsPkgs.hashable
            hsPkgs.hashable-extras
            hsPkgs.lens
            hsPkgs.log-domain
            hsPkgs.pointed
            hsPkgs.semigroupoids
            hsPkgs.semigroups
            hsPkgs.safecopy
            hsPkgs.vector
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
        tests = {
          doctests = {
            depends  = optionals (!(!_flags.test-doctests)) [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.semigroups
              hsPkgs.simple-reflect
            ];
          };
        };
      };
    }