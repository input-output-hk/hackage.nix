{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Yampa";
          version = "0.9.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "George Giorgidze (giorgidze@gmail.com)";
        author = "Henrik Nilsson, Antony Courtney";
        homepage = "http://www.haskell.org/haskellwiki/Yampa";
        url = "";
        synopsis = "Library for programming hybrid systems.";
        description = "Domain-specific language embedded in Haskell for programming\nhybrid (mixed discrete-time and continuous-time) systems. Yampa is based on\nthe concepts of Functional Reactive Programming (FRP) and is structured using\narrow combinators.";
        buildType = "Simple";
      };
      components = {
        "Yampa" = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
          ];
        };
      };
    }