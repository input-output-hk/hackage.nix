{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hoopl";
          version = "3.7.8.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nr@cs.tufts.edu";
        author = "Norman Ramsey, João Dias, and Simon Peyton Jones";
        homepage = "http://ghc.cs.tufts.edu/hoopl/";
        url = "";
        synopsis = "A library to support dataflow analysis and optimization";
        description = "Higher-order optimization library";
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