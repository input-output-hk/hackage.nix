{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "FindBin";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2008-2009 Audrey Tang";
        maintainer = "Audrey Tang <audreyt@audreyt.org>";
        author = "Audrey Tang <audreyt@audreyt.org>";
        homepage = "http://github.com/audreyt/findbin";
        url = "";
        synopsis = "Locate directory of original program";
        description = "This module locates the full directory to the running program,\nto allow the use of paths relative to it.\nFindBin supports invocation of Haskell programs via \"ghci\",\nvia \"runhaskell/runghc\", as well as compiled as an executable.";
        buildType = "Simple";
      };
      components = {
        "FindBin" = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
      };
    }