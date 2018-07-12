{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hoogle";
          version = "4.1.3";
        };
        license = "LicenseRef-GPL";
        copyright = "Neil Mitchell 2004-2010";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "http://www.haskell.org/hoogle/";
        url = "";
        synopsis = "Haskell API Search";
        description = "Hoogle is a Haskell API search engine, which allows you to\nsearch many standard Haskell libraries by either function name,\nor by approximate type signature.";
        buildType = "Simple";
      };
      components = {
        "hoogle" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.random
            hsPkgs.safe
            hsPkgs.binary
            hsPkgs.parsec
            hsPkgs.transformers
            hsPkgs.uniplate
            hsPkgs.haskell-src-exts
          ];
        };
        exes = {
          "hoogle" = {
            depends  = [
              hsPkgs.time
              hsPkgs.cmdargs
              hsPkgs.tagsoup
              hsPkgs.network
              hsPkgs.HTTP
              hsPkgs.Cabal
            ];
          };
        };
      };
    }