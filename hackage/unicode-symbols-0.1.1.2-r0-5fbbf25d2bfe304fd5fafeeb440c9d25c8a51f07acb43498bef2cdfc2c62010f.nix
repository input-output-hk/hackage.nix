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
      specVersion = "1.6";
      identifier = {
        name = "unicode-symbols";
        version = "0.1.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Roel van Dijk";
      maintainer = "vandijk.roel@gmail.com";
      author = "Roel van Dijk";
      homepage = "";
      url = "";
      synopsis = "Unicode alternatives for common functions and operators";
      description = "* /Important note:/ This package will soon be deprecated.\nUse <http://hackage.haskell.org/package/base-unicode-symbols>\nand\\/or\n<http://hackage.haskell.org/package/containers-unicode-symbols>\ninstead.\n\nThis package defines new symbols for a number of functions and\noperators in the base package and for the containers package.\n\nAll symbols are documented with their actual definition and\ninformation regarding their Unicode code point. They should be\ncompletely interchangeable with their definitions.\n\nThis package was inspired by unicode-prelude from P&#xE9;ter\nDivi&#xE1;nszky:\n<http://hackage.haskell.org/package/unicode-prelude>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }