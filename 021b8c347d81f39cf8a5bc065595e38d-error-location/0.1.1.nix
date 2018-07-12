{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "error-location";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "greg@gregweber.info";
        author = "Greg Weber";
        homepage = "https://github.com/gregwebs/ErrorLocation.hs";
        url = "";
        synopsis = "error functions that show file location information";
        description = "> \$(err \"OH NO!\")\n>\n> main:Main main.hs:16:1 OH NO!\nNotice how it displays package:module file:line:character\nIt exposes the functions err (error), undef (undefined), and trc (Debug.Trace.trace). All of these behave the same as their normal counterpart but also spit out a location.\nI also included my favorite helper, debug, which is like trace but just show the value. No TH version with location yet.\n> debug [1,2,3]\n>\n> DEBUG: [1,2,3]\n> [1,2,3]";
        buildType = "Simple";
      };
      components = {
        "error-location" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }