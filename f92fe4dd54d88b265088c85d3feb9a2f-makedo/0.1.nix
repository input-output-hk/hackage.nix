{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "makedo";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "eric.kow@gmail.com";
        author = "Eric Kow";
        homepage = "http://darcsden.com/kowey/makedo";
        url = "";
        synopsis = "Helper for writing redo scripts in Haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        makedo = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.HSH
          ];
        };
      };
    }