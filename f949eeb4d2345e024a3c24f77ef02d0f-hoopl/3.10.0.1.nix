{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hoopl";
          version = "3.10.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nr@cs.tufts.edu";
        author = "Norman Ramsey, Joao Dias, Simon Marlow and Simon Peyton Jones";
        homepage = "http://ghc.cs.tufts.edu/hoopl/";
        url = "";
        synopsis = "A library to support dataflow analysis and optimization";
        description = "Higher-order optimization library\n\nSee /Norman Ramsey, Joao Dias, and Simon Peyton Jones./\n<http://research.microsoft.com/en-us/um/people/simonpj/Papers/c--/hoopl-haskell10.pdf \"Hoopl: A Modular, Reusable Library for Dataflow Analysis and Transformation\"> /(2010)/ for more details.";
        buildType = "Simple";
      };
      components = {
        hoopl = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }