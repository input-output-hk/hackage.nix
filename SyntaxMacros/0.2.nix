{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "SyntaxMacros";
          version = "0.2";
        };
        license = "LicenseRef-LGPL";
        copyright = "Universiteit Utrecht";
        maintainer = "Marcos Viera <mviera@fing.edu.uy>";
        author = "";
        homepage = "http://www.cs.uu.nl/wiki/Center/SyntaxMacrosForFree";
        url = "";
        synopsis = "Syntax Macros in the form of an EDSL";
        description = "Library of first-class Syntax Macros";
        buildType = "Simple";
      };
      components = {
        SyntaxMacros = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.template-haskell
            hsPkgs.TTTAS
            hsPkgs.AspectAG
            hsPkgs.uulib
            hsPkgs.containers
          ];
        };
      };
    }