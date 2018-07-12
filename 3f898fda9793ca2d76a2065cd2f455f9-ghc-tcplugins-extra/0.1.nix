{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      deverror = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghc-tcplugins-extra";
          version = "0.1";
        };
        license = "BSD-2-Clause";
        copyright = "Copyright © 2015 University of Twente";
        maintainer = "christiaan.baaij@gmail.com";
        author = "Christiaan Baaij";
        homepage = "http://www.clash-lang.org/";
        url = "";
        synopsis = "Utilities for writing GHC type-checker plugins";
        description = "";
        buildType = "Simple";
      };
      components = {
        "ghc-tcplugins-extra" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
          ];
        };
      };
    }