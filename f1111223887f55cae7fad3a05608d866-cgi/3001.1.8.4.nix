{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
      bytestring-in-base = true;
      extensible-exceptions-in-base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "cgi";
          version = "3001.1.8.4";
        };
        license = "BSD-3-Clause";
        copyright = "Bjorn Bringert, Andy Gill, Anders Kaseorg, Ian Lynagh,\nErik Meijer, Sven Panne, Jeremy Shaw";
        maintainer = "Anders Kaseorg <andersk@mit.edu>";
        author = "Bjorn Bringert";
        homepage = "http://andersk.mit.edu/haskell/cgi/";
        url = "";
        synopsis = "A library for writing CGI programs";
        description = "This is a Haskell library for writing CGI programs.";
        buildType = "Simple";
      };
      components = {
        cgi = {
          depends  = (([
            hsPkgs.network
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.MonadCatchIO-mtl
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
            ])) ++ (if _flags.extensible-exceptions-in-base
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.extensible-exceptions
            ]);
        };
      };
    }