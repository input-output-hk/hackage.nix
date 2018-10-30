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
        name = "bot";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2010 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/Bot";
      url = "http://code.haskell.org/~conal/code/bot";
      synopsis = "bots for functional reactive programming";
      description = "/Bot/ is an experimental, arrow-friendly foundation for functional\nreactive programming.\n\nPlease see the project wiki page: <http://haskell.org/haskellwiki/Bot>\n\nThe module documentation pages have links to colorized source code and\nto wiki pages where you can read and contribute user comments.  Enjoy!\n\n&#169; 2008 by Conal Elliott; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.arrows)
          (hsPkgs.Stream)
        ];
      };
    };
  }