{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "hBDD-CMUBDD";
          version = "0.0.3";
        };
        license = "LicenseRef-LGPL";
        copyright = "(C) 2002-2005, 2009 University of New South Wales, (C) 2009-2011 Peter Gammie";
        maintainer = "peteg42@gmail.com";
        author = "Peter Gammie";
        homepage = "";
        url = "";
        synopsis = "An FFI binding to CMU/Long's BDD library";
        description = "hBDD provides a high-level API to some Boolean Decision Diagram\nlibraries; this is the CMU/Long part of it.";
        buildType = "Simple";
      };
      components = {
        hBDD-CMUBDD = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.hBDD
            hsPkgs.unix
          ];
          libs = [ pkgs.bdd pkgs.mem ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
      };
    }