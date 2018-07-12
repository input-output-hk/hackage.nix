{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test-doctests = true;
      herbie = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "approximate";
          version = "0.3";
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
        "approximate" = {
          depends  = ([
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytes
            hsPkgs.cereal
            hsPkgs.comonad
            hsPkgs.deepseq
            hsPkgs.ghc-prim
            hsPkgs.hashable
            hsPkgs.lens
            hsPkgs.log-domain
            hsPkgs.pointed
            hsPkgs.semigroupoids
            hsPkgs.semigroups
            hsPkgs.safecopy
            hsPkgs.vector
          ] ++ pkgs.lib.optional _flags.herbie hsPkgs.HerbiePlugin) ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.4" && compiler.version.lt "7.6")) hsPkgs.ghc-prim;
        };
        tests = {
          "doctests" = {
            depends  = pkgs.lib.optionals (!(!_flags.test-doctests)) [
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