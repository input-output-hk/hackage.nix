{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "apportionment";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "haskell@henning-thielemann.de";
        author = "Henning Thielemann";
        homepage = "http://hub.darcs.net/thielema/apportionment";
        url = "";
        synopsis = "Round a set of numbers while maintaining its sum";
        description = "Round a set of numbers while maintaining its sum.\nAccording procedures are used to assign seats to parties in a parliament.\nYou may also use it to round percentages that sum up to 100%.\n<https://en.wikipedia.org/wiki/Apportionment_(politics)>";
        buildType = "Simple";
      };
      components = {
        apportionment = {
          depends  = [
            hsPkgs.containers
            hsPkgs.utility-ht
            hsPkgs.base
          ];
        };
      };
    }