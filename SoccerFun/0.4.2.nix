{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "SoccerFun";
          version = "0.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010, Jan Rochel";
        maintainer = "jan@rochel.info";
        author = "Jan Rochel";
        homepage = "http://www.cs.ru.nl/~peter88/SoccerFun/SoccerFun.html";
        url = "";
        synopsis = "Football simulation framework for teaching functional programming";
        description = "This is a Haskell port of the the SoccerFun framework originally implemented in Clean. From the website: Soccer-Fun is an educational project to stimulate functional programming by thinking about, designing, implementing, running, and competing with the brains of football players! It is open for participation by everybody who likes to contribute. It is not restricted to a particular functional programming language.";
        buildType = "Simple";
      };
      components = {
        SoccerFun = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.random
            hsPkgs.mtl
            hsPkgs.derive
            hsPkgs.binary
            hsPkgs.plugins
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.zlib
          ];
        };
        exes = { sfRecord = {}; };
      };
    }