{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "every";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Athan Clark";
        maintainer = "athan.clark@gmail.com";
        author = "Athan Clark";
        homepage = "https://github.com/athanclark/every#readme";
        url = "";
        synopsis = "Run a process every so often.";
        description = "";
        buildType = "Simple";
      };
      components = {
        every = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
            hsPkgs.stm
          ];
        };
      };
    }