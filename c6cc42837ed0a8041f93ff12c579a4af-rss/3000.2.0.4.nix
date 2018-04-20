{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      old-locale = false;
      network-uri = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "rss";
          version = "3000.2.0.4";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "Jeremy Shaw 2004, Bjorn Bringert 2004-2006";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Jeremy Shaw, Bjorn Bringert";
        homepage = "https://github.com/basvandijk/rss";
        url = "";
        synopsis = "A library for generating RSS 2.0 feeds.";
        description = "This library allows you to generate RSS 2.0 feeds.";
        buildType = "Simple";
      };
      components = {
        rss = {
          depends  = ([
            hsPkgs.base
            hsPkgs.HaXml
            hsPkgs.time
            hsPkgs.old-locale
          ] ++ (if _flags.old-locale
            then [
              hsPkgs.time
              hsPkgs.old-locale
            ]
            else [ hsPkgs.time ])) ++ [
            hsPkgs.network-uri
            hsPkgs.network
          ];
        };
      };
    }