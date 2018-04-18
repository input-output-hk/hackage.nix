{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      old-base = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hs-twitter";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sigbjorn Finne <sof@forkio.com>";
        author = "Sigbjorn Finne";
        homepage = "";
        url = "";
        synopsis = "Haskell binding to the Twitter API";
        description = "The hs-twitter API binding lets you access twitter.com's\nresources and methods from Haskell. Implements the\nfull API, as specified at <http://apiwiki.twitter.com/REST+API+Documentation>\n\nFor more info on use, please visit <http://haskell.forkIO.com/twitter>";
        buildType = "Simple";
      };
      components = {
        hs-twitter = {
          depends  = [
            hsPkgs.HTTP
            hsPkgs.network
            hsPkgs.utf8-string
            hsPkgs.json
            hsPkgs.mime
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.random
          ] ++ [ hsPkgs.base ];
        };
      };
    }