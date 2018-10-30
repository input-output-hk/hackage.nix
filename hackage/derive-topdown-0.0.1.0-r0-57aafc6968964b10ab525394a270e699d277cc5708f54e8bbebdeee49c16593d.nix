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
      specVersion = "1.10";
      identifier = {
        name = "derive-topdown";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) songzh";
      maintainer = "songzh <Haskell.Zhang.Song@hotmail.com>";
      author = "songzh <Haskell.Zhang.Song@hotmail.com>";
      homepage = "https://github.com/HaskellZhangSong/derive-topdown";
      url = "";
      synopsis = "Help Haskellers derive class instances for composited data types.";
      description = "This package will make it easier to derive class instance for complex composited data types by using Template Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.syb)
          (hsPkgs.primitive)
          (hsPkgs.th-expand-syns)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "derive-topdown-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.th-expand-syns)
            (hsPkgs.syb)
            (hsPkgs.primitive)
            (hsPkgs.derive)
            (hsPkgs.QuickCheck)
            (hsPkgs.binary)
            (hsPkgs.haskell-src)
            (hsPkgs.simple-sql-parser)
            (hsPkgs.GenericPretty)
          ];
        };
      };
    };
  }