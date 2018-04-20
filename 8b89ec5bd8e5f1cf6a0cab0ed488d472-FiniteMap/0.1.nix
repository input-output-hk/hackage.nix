{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "FiniteMap";
          version = "0.1";
        };
        license = "BSD-4-Clause";
        copyright = "The University of Glasgow 2001";
        maintainer = "Pepe Iborra <mnislaih@gmail.com>";
        author = "The University of Glasgow 2001";
        homepage = "";
        url = "";
        synopsis = "A finite map implementation, derived from the paper: Efficient sets: a balancing act, S. Adams, Journal of functional programming 3(4) Oct 1993, pp553-562";
        description = "This is the deprecated Data.FiniteMap library, often useful to get old code to build when you are too lazy to update it.";
        buildType = "Custom";
      };
      components = {
        FiniteMap = {
          depends  = [
            hsPkgs.haskell98
            hsPkgs.base
          ];
        };
      };
    }