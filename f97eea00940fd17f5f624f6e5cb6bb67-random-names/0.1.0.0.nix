{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "random-names";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "aiya000";
        maintainer = "aiya000 <aiya000.develop@gmail.com>";
        author = "aiya000";
        homepage = "https://github.com/aiya000/hs-random-names";
        url = "";
        synopsis = "Expose Random and Arbitrary instances";
        description = "Random, Arbitrary instances for naming cases (PascalCase, camelCase, etc)";
        buildType = "Simple";
      };
      components = {
        "random-names" = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.base
            hsPkgs.random
            hsPkgs.safe
            hsPkgs.text
          ];
        };
      };
    }