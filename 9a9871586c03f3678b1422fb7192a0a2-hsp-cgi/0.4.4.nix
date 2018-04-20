{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hsp-cgi";
          version = "0.4.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Niklas Broberg <nibro@cs.chalmers.se>";
        author = "Niklas Broberg";
        homepage = "http://code.google.com/p/hsp";
        url = "";
        synopsis = "Facilitates running Haskell Server Pages web pages as CGI programs.";
        description = "Haskell Server Pages (HSP) is an extension of vanilla Haskell, targetted at the task of\nwriting dynamic server-side web pages. This module provides facilities to allow such pages\nto be run as CGI programs.";
        buildType = "Simple";
      };
      components = {
        hsp-cgi = {
          depends  = [
            hsPkgs.base
            hsPkgs.hsp
            hsPkgs.network
            hsPkgs.containers
            hsPkgs.harp
          ];
        };
      };
    }