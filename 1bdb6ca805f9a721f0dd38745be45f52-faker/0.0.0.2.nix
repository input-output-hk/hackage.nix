{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "faker";
          version = "0.0.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Alexey Gaziev <alex.gaziev@gmail.com>";
        author = "Alexey Gaziev";
        homepage = "https://github.com/gazay/faker";
        url = "";
        synopsis = "Pure Haskell library for generating fake data";
        description = "No description yet\n\n> 0.0.0.2\n>  - Small data fix for address\n\n> 0.0.0.1\n>  - Init version";
        buildType = "Simple";
      };
      components = {
        faker = {
          depends  = [
            hsPkgs.base
            hsPkgs.gimlh
            hsPkgs.random
            hsPkgs.split
          ];
        };
      };
    }