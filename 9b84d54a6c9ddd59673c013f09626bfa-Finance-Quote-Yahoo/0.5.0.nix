{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Finance-Quote-Yahoo";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "haskell@fastmail.fm";
        author = "brad clawsie";
        homepage = "http://www.b7j0c.org/content/haskell-yquote.html";
        url = "";
        synopsis = "Obtain quote data from finance.yahoo.com";
        description = "Obtain quote data from finance.yahoo.com";
        buildType = "Custom";
      };
      components = {
        Finance-Quote-Yahoo = {
          depends  = [
            hsPkgs.network
            hsPkgs.HTTP
            hsPkgs.HTTP-Simple
            hsPkgs.time
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.old-locale
            ]
            else [ hsPkgs.base ]);
        };
      };
    }