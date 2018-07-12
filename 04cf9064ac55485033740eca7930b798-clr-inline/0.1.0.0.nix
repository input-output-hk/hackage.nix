{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "clr-inline";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Jose Iborra";
        maintainer = "pepeiborra@gmail.com";
        author = "Jose Iborra";
        homepage = "https://gitlab.com/tim-m89/clr-haskell";
        url = "";
        synopsis = "Quasiquoters for inline C# and F#";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "clr-inline" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.Cabal
            hsPkgs.clr-host
            hsPkgs.clr-marshal
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.extra
            hsPkgs.filepath
            hsPkgs.here
            hsPkgs.lens
            hsPkgs.process
            hsPkgs.template-haskell
            hsPkgs.temporary
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.clr-inline
              hsPkgs.hspec
              hsPkgs.text
            ];
          };
        };
        benchmarks = {
          "benchmark" = {
            depends  = [
              hsPkgs.base
              hsPkgs.clr-inline
              hsPkgs.criterion
              hsPkgs.text
            ];
          };
        };
      };
    }