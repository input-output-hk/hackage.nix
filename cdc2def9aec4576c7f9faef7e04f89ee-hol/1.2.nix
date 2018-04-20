{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "hol";
          version = "1.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
        author = "Joe Leslie-Hurd <joe@gilith.com>";
        homepage = "";
        url = "";
        synopsis = "Higher order logic";
        description = "This package implements a higher order logic kernel with OpenTheory support.";
        buildType = "Simple";
      };
      components = {
        hol = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        exes = {
          hol-pkg = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
        tests = {
          hol-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
        benchmarks = {
          hol-profile = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
      };
    }