{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "error-location";
          version = "0.1.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "greg@gregweber.info";
        author = "Greg Weber";
        homepage = "https://github.com/gregwebs/ErrorLocation.hs";
        url = "";
        synopsis = "error functions that show file location information";
        description = "Error functions that give file location information\n\n> \$(err \"OH NO!\")\n>\n> main:Main main.hs:16:1 OH NO!\n\nNotice how it displays package:module file:line:character\nIt exposes the functions err (error), undef (undefined), and trc (Debug.Trace.trace). All of these behave the same as their normal counterpart but also spit out a location.\n\nI also included my favorite helper, debug, which is like trace but just show the value.\n\n> debug [1,2,3]\n>\n> DEBUG: [1,2,3]\n> [1,2,3]\n\nAnd The Template Haskell version.\n\n> debug [1,2,3]\n>\n> DEBUG main:Main main.hs:1:3 [1,2,3]\n> [1,2,3]\n\nSee module for a listing of all the functions with short descriptions, and the homepage for some more examples https://github.com/gregwebs/ErrorLocation.hs";
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