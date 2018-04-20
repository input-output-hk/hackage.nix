{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ReviewBoard";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<adam.smyczek@gmail.com>";
        author = "Adam Smyczek";
        homepage = "";
        url = "";
        synopsis = "Haskell bindings to ReviewBoard";
        description = "Haskell bindings to ReviewBoard (<http://code.google.com/p/reviewboard/>).";
        buildType = "Simple";
      };
      components = {
        ReviewBoard = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.network
            hsPkgs.HTTP
            hsPkgs.json
          ];
        };
        exes = {
          mkrr = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.directory
              hsPkgs.network
              hsPkgs.HTTP
              hsPkgs.json
            ];
          };
          rbpatch = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.network
              hsPkgs.HTTP
              hsPkgs.json
            ];
          };
        };
      };
    }