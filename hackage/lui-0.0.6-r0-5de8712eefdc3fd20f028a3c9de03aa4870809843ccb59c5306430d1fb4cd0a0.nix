{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "lui";
        version = "0.0.6";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 by Eyal Lotem";
      maintainer = "eyal.lotem@gmail.com";
      author = "Eyal Lotem";
      homepage = "";
      url = "";
      synopsis = "Purely FunctionaL User Interface";
      description = "This package contains a set of composable purely functional widgets\nand a mainloop adapter to adapt the widgets to run in IO. It is\nHaskGame based.\n\nHaskGame does not yet wrap SDL properly, so it uses SDL directly as\nwell.\n\nProject wiki page: <http://haskell.org/haskellwiki/LUI>\n\n&#169; 2009 by Eyal Lotem; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.SDL)
          (hsPkgs.haskgame)
          (hsPkgs.MaybeT)
        ];
      };
    };
  }