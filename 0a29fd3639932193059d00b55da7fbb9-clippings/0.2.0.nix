{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "clippings";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Vikram Verma <me@vikramverma.com>";
        author = "Vikram Verma <me@vikramverma.com>";
        homepage = "";
        url = "";
        synopsis = "A parser/generator for Kindle-format clipping files (`My Clippings.txt`),";
        description = "";
        buildType = "Simple";
      };
      components = {
        "clippings" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.parsec
            hsPkgs.old-locale
            hsPkgs.strptime
            hsPkgs.data-default
            hsPkgs.functor-infix
          ];
        };
        exes = {
          "clippings2tsv" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bifunctors
              hsPkgs.clippings
              hsPkgs.cassava
              hsPkgs.parsec
              hsPkgs.bytestring
              hsPkgs.safecopy
              hsPkgs.functor-infix
            ];
          };
        };
        tests = {
          "clippings-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.clippings
              hsPkgs.data-default
              hsPkgs.parsec
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.assertions
              hsPkgs.filepath
            ];
          };
        };
      };
    }