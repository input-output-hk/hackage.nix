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
        name = "mlist";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 by Eyal Lotem";
      maintainer = "eyal.lotem@gmail.com";
      author = "Eyal Lotem";
      homepage = "http://haskell.org/haskellwiki/mlist";
      url = "";
      synopsis = "Monadic List alternative to lazy I/O";
      description = "\nGit repository is at: <http://github.com/Peaker/mlist>\n\n&#169; 2009 by Eyal Lotem; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
        ];
      };
    };
  }