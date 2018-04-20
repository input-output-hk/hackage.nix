{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "n-tuple";
          version = "0.0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Athan Clark";
        maintainer = "athan.clark@gmail.com";
        author = "Athan Clark";
        homepage = "https://github.com/athanclark/n-tuple#readme";
        url = "";
        synopsis = "Homogeneous tuples of arbitrary length.";
        description = "";
        buildType = "Simple";
      };
      components = {
        n-tuple = {
          depends  = [
            hsPkgs.base
            hsPkgs.singletons
            hsPkgs.vector
          ];
        };
      };
    }