{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
      bytestring-in-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "cgi";
          version = "3001.1.7.2";
        };
        license = "BSD-3-Clause";
        copyright = "Bjorn Bringert, Andy Gill, Ian Lynagh, Erik Meijer,\nSven Panne, Jeremy Shaw";
        maintainer = "bjorn@bringert.net";
        author = "Bjorn Bringert";
        homepage = "";
        url = "";
        synopsis = "A library for writing CGI programs";
        description = "This is a Haskell library for writing CGI programs.";
        buildType = "Simple";
      };
      components = {
        "cgi" = {
          depends  = ([
            hsPkgs.network
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.xhtml
          ] ++ (if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.old-time
              hsPkgs.old-locale
              hsPkgs.containers
            ]
            else [
              hsPkgs.base
            ])) ++ (if _flags.bytestring-in-base
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.bytestring
            ]);
        };
      };
    }