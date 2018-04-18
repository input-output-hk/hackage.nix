{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "qc-oi-testgenerator";
          version = "1.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "haskell@tobias.goedderz.info";
        author = "Tobias Gödderz";
        homepage = "http://www.iai.uni-bonn.de/~jv/GV14.html";
        url = "";
        synopsis = "Compile time generation of operation invariance tests for QuickCheck";
        description = "";
        buildType = "Simple";
      };
      components = {
        qc-oi-testgenerator = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.QuickCheck
            hsPkgs.fclabels
          ];
        };
      };
    }