{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      old-locale = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "time-locale-compat";
          version = "0.1.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014-2018 Kei Hibino";
        maintainer = "ex8k.hibino@gmail.com";
        author = "Kei Hibino";
        homepage = "https://github.com/khibino/haskell-time-locale-compat";
        url = "";
        synopsis = "Compatibile module for time-format locale";
        description = "This package contains wrapped name module for time-format locale between old-locale and time-1.5.";
        buildType = "Simple";
      };
      components = {
        "time-locale-compat" = {
          depends  = [
            hsPkgs.base
          ] ++ (if _flags.old-locale
            then [
              hsPkgs.old-locale
              hsPkgs.time
            ]
            else [ hsPkgs.time ]);
        };
      };
    }