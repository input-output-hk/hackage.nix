{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wl-pprint-extras";
          version = "1.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett,\nCopyright (C) 2000 Daan Leijen";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "git://github.com/ekmett/wl-pprint-extras/";
        url = "";
        synopsis = "A free monad based on the Wadler/Leijen pretty printer";
        description = "A free monad based on the Wadler/Leijen pretty printer";
        buildType = "Simple";
      };
      components = {
        wl-pprint-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroups
            hsPkgs.semigroupoids
          ];
        };
      };
    }