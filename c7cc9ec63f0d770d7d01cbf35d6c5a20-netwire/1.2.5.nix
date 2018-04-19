{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "netwire";
          version = "1.2.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 Ertugrul Söylemez";
        maintainer = "Ertugrul Söylemez <es@ertes.de>";
        author = "Ertugrul Söylemez <es@ertes.de>";
        homepage = "";
        url = "";
        synopsis = "Arrowized FRP implementation";
        description = "This library provides an arrowized functional reactive programming\n(FRP) implementation.  From the basic idea it is similar to Yampa\nand Animas, but has a much simpler internal representation and a lot\nof new features.";
        buildType = "Simple";
      };
      components = {
        netwire = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.mersenne-random
            hsPkgs.monad-control
            hsPkgs.random
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.vector-space
          ];
        };
      };
    }