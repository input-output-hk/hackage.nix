{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      network-uri = true;
      old-mtl = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cgi";
          version = "3001.2.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "Bjorn Bringert, John Chee, Andy Gill, Anders Kaseorg,\nIan Lynagh, Erik Meijer, Sven Panne, Jeremy Shaw";
        maintainer = "John Chee <cheecheeo@gmail.com>";
        author = "Bjorn Bringert";
        homepage = "https://github.com/cheecheeo/haskell-cgi";
        url = "";
        synopsis = "A library for writing CGI programs";
        description = "This is a Haskell library for writing CGI programs.";
        buildType = "Simple";
      };
      components = {
        "cgi" = {
          depends  = ([
            hsPkgs.parsec
            hsPkgs.exceptions
            hsPkgs.xhtml
            hsPkgs.bytestring
            hsPkgs.base
            hsPkgs.old-time
            hsPkgs.old-locale
            hsPkgs.containers
            hsPkgs.multipart
          ] ++ (if _flags.network-uri
            then [
              hsPkgs.network-uri
              hsPkgs.network
            ]
            else [
              hsPkgs.network
            ])) ++ (if _flags.old-mtl
            then [
              hsPkgs.mtl
              hsPkgs.mtl-compat
            ]
            else [ hsPkgs.mtl ]);
        };
      };
    }