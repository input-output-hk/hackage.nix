{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      new-base = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "mediawiki";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sigbjorn Finne <sof@forkIO.com>";
        author = "Sigbjorn Finne <sof@forkIO.com>";
        homepage = "";
        url = "";
        synopsis = "Interfacing with the MediaWiki API";
        description = "A complete Haskell binding to the MediaWiki API";
        buildType = "Simple";
      };
      components = {
        mediawiki = {
          depends  = [
            hsPkgs.base
            hsPkgs.xml
            hsPkgs.HTTP
            hsPkgs.network
            hsPkgs.mime
            hsPkgs.utf8-string
          ];
        };
        exes = {
          main = {
            depends  = [ hsPkgs.base ];
          };
          listCat = {
            depends  = [
              hsPkgs.base
              hsPkgs.pretty
            ];
          };
        };
      };
    }