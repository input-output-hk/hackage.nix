{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gitlib";
          version = "0.5.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "johnw@fpcomplete.com";
        author = "John Wiegley";
        homepage = "";
        url = "";
        synopsis = "Higher-level types for working with hlibgit2";
        description = "Higher-level types for working with hlibgit2";
        buildType = "Simple";
      };
      components = {
        gitlib = {
          depends  = [
            hsPkgs.base
            hsPkgs.hlibgit2
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.parallel-io
            hsPkgs.stringable
            hsPkgs.system-fileio
            hsPkgs.system-filepath
            hsPkgs.text
            hsPkgs.text-icu
            hsPkgs.time
          ];
        };
        tests = {
          smoke = {
            depends  = [
              hsPkgs.base
              hsPkgs.gitlib
              hsPkgs.hlibgit2
              hsPkgs.HUnit
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.lens
              hsPkgs.parallel-io
              hsPkgs.stringable
              hsPkgs.system-fileio
              hsPkgs.system-filepath
              hsPkgs.text
              hsPkgs.time
            ];
          };
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