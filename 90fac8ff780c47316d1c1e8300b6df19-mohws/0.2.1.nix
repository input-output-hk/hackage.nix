{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dynamic = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "mohws";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Simon Marlow, Bjorn Bringert";
        maintainer = "Henning Thielemann <webserver@henning-thielemann.de>";
        author = "Simon Marlow, Bjorn Bringert <bjorn@bringert.net>";
        homepage = "http://code.haskell.org/mohws/";
        url = "";
        synopsis = "Modular Haskell Web Server";
        description = "A web server with a module system and support for CGI.\nBased on Simon Marlow's original Haskell Web Server.";
        buildType = "Simple";
      };
      components = {
        "mohws" = {
          depends  = [
            hsPkgs.HTTP
            hsPkgs.network
            hsPkgs.unix
            hsPkgs.parsec
            hsPkgs.html
            hsPkgs.process
            hsPkgs.containers
            hsPkgs.old-time
            hsPkgs.old-locale
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.utility-ht
            hsPkgs.transformers
            hsPkgs.explicit-exception
            hsPkgs.data-accessor
            hsPkgs.directory
            hsPkgs.base
          ];
        };
        exes = {
          "hws" = {};
          "hws-dyn" = {
            depends  = pkgs.lib.optional _flags.dynamic hsPkgs.ghc;
          };
        };
      };
    }