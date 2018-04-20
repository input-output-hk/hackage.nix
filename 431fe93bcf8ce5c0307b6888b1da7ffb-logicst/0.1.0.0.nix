{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      safe-st = true;
      old-applicative = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "logicst";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Andy Sonnenburg";
        maintainer = "Andy Sonnenburg <andy22286@gmail.com>";
        author = "Andy Sonnenburg";
        homepage = "http://github.com/sonyandy/logicst";
        url = "";
        synopsis = "Backtracking mutable references in the ST and IO monads";
        description = "Backtracking mutable references in the ST and IO monads";
        buildType = "Simple";
      };
      components = {
        logicst = {
          depends  = ([
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.logict
          ] ++ pkgs.lib.optional _flags.safe-st hsPkgs.base) ++ pkgs.lib.optional _flags.old-applicative hsPkgs.base;
        };
      };
    }