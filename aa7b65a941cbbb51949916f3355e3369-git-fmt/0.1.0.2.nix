{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "git-fmt";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "public@hjwylde.com";
        author = "Henry J. Wylde";
        homepage = "https://github.com/hjwylde/git-fmt";
        url = "";
        synopsis = "Custom git command for formatting code.";
        description = "git-fmt adds a custom command to Git that automatically formats code.\nThe idea was taken from gofmt, just with a bit of expansion to more languages.";
        buildType = "Simple";
      };
      components = {
        git-fmt = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.extra
            hsPkgs.filepath
            hsPkgs.json
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.optparse-applicative
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        exes = {
          git-fmt = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.extra
              hsPkgs.fast-logger
              hsPkgs.git-fmt
              hsPkgs.monad-logger
              hsPkgs.optparse-applicative
              hsPkgs.time
            ];
          };
        };
        tests = {
          git-fmt-test-json = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.extra
              hsPkgs.filepath
              hsPkgs.git-fmt
              hsPkgs.parsec
              hsPkgs.tasty
              hsPkgs.tasty-golden
            ];
          };
        };
      };
    }