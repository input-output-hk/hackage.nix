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
        name = "drinkery";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017 Fumiaki Kinoshita";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/drinkery#readme";
      url = "";
      synopsis = "Boozy streaming library";
      description = "Please see the README on Github at <https://github.com/fumieval/drinkery#readme>";
      buildType = "Simple";
    };
    components = {
      "drinkery" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
    };
  }