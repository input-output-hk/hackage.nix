{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hBDD-CUDD";
          version = "0.0.3";
        };
        license = "LicenseRef-LGPL";
        copyright = "(C) 2002-2005, 2009 University of New South Wales, (C) 2009-2011 Peter Gammie";
        maintainer = "peteg42@gmail.com";
        author = "Peter Gammie, Jeremy Lee";
        homepage = "";
        url = "";
        synopsis = "An FFI binding to the CUDD library";
        description = "hBDD provides a high-level API to some Boolean Decision Diagram\nlibraries; this is the CUDD part of it.";
        buildType = "Simple";
      };
      components = {
        "hBDD-CUDD" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.hBDD
            hsPkgs.unix
          ];
          libs = pkgs.lib.optional system.isOsx pkgs.cudd ++ pkgs.lib.optionals system.isLinux [
            pkgs.cudd
            pkgs.mtr
            pkgs.st
            pkgs.util
            pkgs.epd
          ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
      };
    }