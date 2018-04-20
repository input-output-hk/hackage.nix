{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hackage2hwn";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<dons@galois.com>";
        author = "Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/hackage2hwn";
        url = "";
        synopsis = "Convert Hackage RSS feeds to Haskell Weekly News format";
        description = "Download and parse the Hackage RSS 2.0 feed for the\nautomatic inclusion in the Haskell Weekly News.";
        buildType = "Custom";
      };
      components = {
        exes = {
          hackage2hwn = {
            depends  = [
              hsPkgs.base
              hsPkgs.tagsoup
              hsPkgs.xml
            ];
          };
        };
      };
    }