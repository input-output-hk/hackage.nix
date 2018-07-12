{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Sprig";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Liam O'Connor";
        maintainer = "Liam O'Connor (liamoc@cse.unsw.edu.au)";
        author = "Liam O'Connor (liamoc@cse.unsw.edu.au)";
        homepage = "http://liamoc.net/static/Sprig";
        url = "";
        synopsis = "Binding to Sprig";
        description = "Foreign Binding to Jonny D's SDL Primitives Generator (SPriG) library, a fork of SGE. Haddock documentation is available from the homepage.";
        buildType = "Custom";
      };
      components = {
        "Sprig" = {
          depends  = [
            hsPkgs.base
            hsPkgs.SDL
          ];
        };
      };
    }