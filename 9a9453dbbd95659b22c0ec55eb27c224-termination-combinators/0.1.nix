{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "termination-combinators";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Max Bolingbroke <batterseapower@hotmail.com>";
        author = "Max Bolingbroke";
        homepage = "http://www.github.com/batterseapower/termination-combinators";
        url = "";
        synopsis = "Termination combinators for forcing non-terminating algorithms to terminate";
        description = "For more information see the paper at http://www.cl.cam.ac.uk/~mb566/papers/termination-combinators-hs11.pdf";
        buildType = "Simple";
      };
      components = {
        termination-combinators = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.contravariant
          ];
        };
      };
    }