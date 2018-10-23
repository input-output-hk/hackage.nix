{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "wxFruit";
        version = "0.1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Antony Courtney, Bart Robinson, Paul Hudak";
      homepage = "http://www.haskell.org/haskellwiki/WxFruit";
      url = "";
      synopsis = "An implementation of Fruit using wxHaskell.";
      description = "This is an updated version of the original wxFruit.\n\nwxFruit isn't maintained by original authors, and Haskell.org. There\nare a few forked versions of wxFruit now. One extension is shelarcy's\nYaPan\n(<http://sourceforge.net/project/showfiles.php?group_id=168626&package_id=199138>).\nIt added Menu and OpenGL support. And another one is Remi Turk's Juicy\nFruit\n(<http://www.cs.uu.nl/wiki/pub/Afp0607/DomainSpecificLanguages/fruit.pdf>).";
      buildType = "Simple";
    };
    components = {
      "wxFruit" = {
        depends  = if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.old-time)
            (hsPkgs.wx)
            (hsPkgs.wxcore)
            (hsPkgs.Yampa)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.wx)
            (hsPkgs.wxcore)
            (hsPkgs.Yampa)
          ];
      };
      exes = {
        "paddle" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wx)
            (hsPkgs.wxcore)
            (hsPkgs.Yampa)
          ];
        };
      };
    };
  }