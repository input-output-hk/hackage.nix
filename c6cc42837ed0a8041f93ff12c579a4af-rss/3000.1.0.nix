{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "rss";
          version = "3000.1.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "Jeremy Shaw 2004, Bjorn Bringert 2004-2006";
        maintainer = "bjorn@bringert.net";
        author = "Jeremy Shaw, Bjorn Bringert";
        homepage = "";
        url = "";
        synopsis = "A library for generating RSS 2.0 feeds.";
        description = "This library allows you to generate RSS 2.0 feeds.";
        buildType = "Simple";
      };
      components = {
        "rss" = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.HaXml
          ] ++ (if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.old-time
              hsPkgs.old-locale
            ]
            else [ hsPkgs.base ]);
        };
      };
    }