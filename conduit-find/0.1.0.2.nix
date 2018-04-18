{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      leafopt = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "conduit-find";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Erik de Castro Lopo <erikd@mega-nerd.com>";
        author = "John Wiegley";
        homepage = "https://github.com/erikd/conduit-find";
        url = "";
        synopsis = "A file-finding conduit that allows user control over traversals.";
        description = "A file-finding conduit that allows user control over traversals.  Please see\nthe module 'Data.Conduit.Find' for more information.";
        buildType = "Simple";
      };
      components = {
        conduit-find = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.conduit-combinators
            hsPkgs.attoparsec
            hsPkgs.unix-compat
            hsPkgs.text
            hsPkgs.regex-posix
            hsPkgs.mtl
            hsPkgs.semigroups
            hsPkgs.exceptions
            hsPkgs.time
            hsPkgs.streaming-commons
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.mmorph
            hsPkgs.either
            hsPkgs.monad-control
            hsPkgs.filepath
          ];
        };
        exes = {
          find-hs = {
            depends  = [
              hsPkgs.base
              hsPkgs.conduit-find
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.conduit-combinators
              hsPkgs.attoparsec
              hsPkgs.unix
              hsPkgs.text
              hsPkgs.regex-posix
              hsPkgs.mtl
              hsPkgs.time
              hsPkgs.either
              hsPkgs.semigroups
              hsPkgs.streaming-commons
              hsPkgs.exceptions
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.monad-control
              hsPkgs.mmorph
              hsPkgs.filepath
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.conduit-find
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.attoparsec
              hsPkgs.unix-compat
              hsPkgs.text
              hsPkgs.regex-posix
              hsPkgs.mtl
              hsPkgs.time
              hsPkgs.either
              hsPkgs.semigroups
              hsPkgs.streaming-commons
              hsPkgs.exceptions
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.monad-control
              hsPkgs.mmorph
              hsPkgs.filepath
              hsPkgs.hspec
            ];
          };
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.semigroups
            ];
          };
        };
      };
    }