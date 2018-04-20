{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "procrastinating-structure";
          version = "1.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Jake.McArthur@gmail.com";
        author = "Jake McArthur";
        homepage = "";
        url = "";
        synopsis = "Pure structures that can be incrementally created\nin impure code";
        description = "This package provides a type class for\nincrementally creating pure structures in impure\ncode. Also included is a queue with a pure front\nand an impure back.";
        buildType = "Simple";
      };
      components = {
        procrastinating-structure = {
          depends  = [
            hsPkgs.base
            hsPkgs.procrastinating-variable
          ];
        };
      };
    }