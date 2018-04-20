{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pb-next";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Author name here";
        maintainer = "example@example.com";
        author = "Author name here";
        homepage = "https://github.com/githubuser/pb-next#readme";
        url = "";
        synopsis = "Utility CLI for working with protobuf files";
        description = "`pb-next` is a CLI for generating \"next\" protocol buffer field values.";
        buildType = "Simple";
      };
      components = {
        pb-next = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.parsec
            hsPkgs.either
            hsPkgs.transformers
          ];
        };
        exes = {
          pbhelp = {
            depends  = [
              hsPkgs.base
              hsPkgs.pb-next
              hsPkgs.either
              hsPkgs.text
              hsPkgs.optparse-applicative
              hsPkgs.data-default
            ];
          };
        };
        tests = {
          pb-next-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.pb-next
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.parsec
            ];
          };
        };
      };
    }