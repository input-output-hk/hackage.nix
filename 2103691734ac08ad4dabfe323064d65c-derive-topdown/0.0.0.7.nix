{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "derive-topdown";
        version = "0.0.0.7";
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
      "derive-topdown" = {
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
    };
  }