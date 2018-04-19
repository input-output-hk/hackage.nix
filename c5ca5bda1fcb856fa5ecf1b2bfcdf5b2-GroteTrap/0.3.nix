{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "GroteTrap";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2007-2008 Jeroen Leeuwestein and Martijn van Steenbergen";
        maintainer = "martijn@van.steenbergen.nl";
        author = "Jeroen Leeuwestein, Martijn van Steenbergen";
        homepage = "";
        url = "";
        synopsis = "GroteTrap";
        description = "Allows quick definition of expression languages. You get a parser for free, as well as conversion from text selection to tree selection and back.";
        buildType = "Simple";
      };
      components = {
        GroteTrap = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.parsec
            hsPkgs.mtl
          ];
        };
      };
    }