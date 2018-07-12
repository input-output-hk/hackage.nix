{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "murder";
          version = "1.3.2";
        };
        license = "LicenseRef-LGPL";
        copyright = "Universiteit Utrecht";
        maintainer = "Marcos Viera <mviera@fing.edu.uy>";
        author = "";
        homepage = "http://www.cs.uu.nl/wiki/Center/CoCoCo";
        url = "";
        synopsis = "MUtually Recursive Definitions Explicitly Represented";
        description = "The murder library is an EDSL for grammar fragments as first-class values. It provides combinators to define and extend grammars, and produce compilers out of them.";
        buildType = "Simple";
      };
      components = {
        "murder" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.TTTAS
            hsPkgs.AspectAG
            hsPkgs.uulib
            hsPkgs.uu-parsinglib
            hsPkgs.ListLike
            hsPkgs.containers
            hsPkgs.HList
          ];
        };
      };
    }