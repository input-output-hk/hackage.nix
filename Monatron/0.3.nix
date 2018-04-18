{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "Monatron";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mauro@fceia.unr.edu.ar";
        author = "Mauro Jaskelioff";
        homepage = "";
        url = "";
        synopsis = "Monad transformer library with uniform liftings";
        description = "An extensible monad transformer library with uniform liftings, a\nfairly portable core, and option of explicit naming of liftings.\nSee http:\\/\\/www.fceia.unr.edu.ar\\/~mjj\\/Monatron\\/ for more information.\nThe monad zipper allows modular composition of components with Monatron effects.\nIt is a contribution of Bruno Oliveira and Tom Schrijvers.\nSee http:\\/\\/www.cs.kuleuven.be\\/~toms\\/Haskell\\/ for more information.";
        buildType = "Simple";
      };
      components = {
        Monatron = {
          depends  = [ hsPkgs.base ];
        };
      };
    }