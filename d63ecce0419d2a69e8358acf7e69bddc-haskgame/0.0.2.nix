{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "haskgame";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 by Eyal Lotem";
        maintainer = "eyal.lotem@gmail.com";
        author = "Eyal Lotem";
        homepage = "";
        url = "";
        synopsis = "Purely FunctionaL User Interface";
        description = "This package contains a set of composable purely funcitonal widgets\nand a mainloop adapter to adapt the widgets to run in IO.\nIt is currently based on SDL.\n\nProject wiki page: <http://haskell.org/haskellwiki/HaskGame>\n\nGit repository is at: <http://github.com/Peaker/haskgame>\n\n&#169; 2009 by Eyal Lotem; BSD3 license.";
        buildType = "Simple";
      };
      components = {
        haskgame = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.containers
            hsPkgs.SDL
            hsPkgs.SDL-ttf
          ];
        };
      };
    }