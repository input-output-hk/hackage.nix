{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "cgi";
          version = "3001.1.5";
        };
        license = "BSD-3-Clause";
        copyright = "Bjorn Bringert, Andy Gill, Ian Lynagh, Erik Meijer,\nSven Panne, Jeremy Shaw";
        maintainer = "bjorn@bringert.net";
        author = "Bjorn Bringert";
        homepage = "";
        url = "";
        synopsis = "A library for writing CGI programs";
        description = "This is a Haskell library for writing CGI programs.";
        buildType = "Custom";
      };
      components = {
        cgi = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.xhtml
          ];
        };
      };
    }