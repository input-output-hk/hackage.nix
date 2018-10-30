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
        name = "Tablify";
        version = "0.8";
      };
      license = "BSD-3-Clause";
      copyright = "© 2009-2011 Daniel Lyons";
      maintainer = "Daniel Lyons <fusion@storytotell.org>";
      author = "Daniel Lyons";
      homepage = "http://www.storytotell.org/code/tablify";
      url = "";
      synopsis = "Tool to render CSV into tables of various formats";
      description = "Tool to render CSV into tables of various formats, including HTML, tbl, and character art (both ASCII and Unicode)";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tablify" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.utf8-string)
            (hsPkgs.parsec)
            (hsPkgs.regex-compat)
            (hsPkgs.haskell98)
            (hsPkgs.xhtml)
            (hsPkgs.safer-file-handles)
          ];
        };
      };
    };
  }