{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Yampa";
          version = "0.9.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "George Giorgidze (GGG at CS dot NOTT dot AC dot UK)";
        author = "Henrik Nilsson, Antony Courtney";
        homepage = "http://www.haskell.org/yampa/";
        url = "";
        synopsis = "Library for programming hybrid systems.";
        description = "Domain-specific language embedded in Haskell for programming hybrid (mixed discrete-time and continuous-time) systems.\nYampa is based on the concepts of Functional Reactive Programming (FRP) and is structured using arrow combinators.";
        buildType = "Simple";
      };
      components = {
        Yampa = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
          ];
        };
      };
    }