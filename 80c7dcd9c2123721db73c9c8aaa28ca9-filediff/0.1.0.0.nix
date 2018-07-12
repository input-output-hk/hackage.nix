{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "filediff";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bgwines@cs.stanford.edu";
        author = "Brett Wines";
        homepage = "https://github.com/bgwines/filediff";
        url = "";
        synopsis = "Diff and patch module";
        description = "A library for creating and applying diffs. Diffs can be manipulated in code in between creation and application.";
        buildType = "Simple";
      };
      components = {
        "filediff" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.directory
            hsPkgs.either
            hsPkgs.transformers
            hsPkgs.data-memocombinators
            hsPkgs.tasty
            hsPkgs.tasty-hunit
            hsPkgs.Zora
            hsPkgs.text
          ];
        };
        tests = {
          "test-filediff" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.mtl
              hsPkgs.time
              hsPkgs.directory
              hsPkgs.either
              hsPkgs.transformers
              hsPkgs.filediff
              hsPkgs.text
            ];
          };
        };
      };
    }