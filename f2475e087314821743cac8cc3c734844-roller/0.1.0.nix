{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "roller";
          version = "0.1.0";
        };
        license = "GPL-2.0-only";
        copyright = "(c) 2013-2014 Econify, LLC";
        maintainer = "lou@econify.com";
        author = "Louis J. Scoras";
        homepage = "https://github.com/Econify/roller";
        url = "";
        synopsis = "Playing with applicatives and dice!";
        description = "A basic library and program for simulated rolling of\npolyhedral dice, as would be used in pen and paper RPGs.";
        buildType = "Simple";
      };
      components = {
        roller = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.regex-applicative
            hsPkgs.optparse-applicative
          ];
        };
        exes = {
          roller = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.regex-applicative
              hsPkgs.optparse-applicative
              hsPkgs.roller
            ];
          };
        };
      };
    }