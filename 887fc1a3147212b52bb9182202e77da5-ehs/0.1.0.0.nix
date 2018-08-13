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
        name = "ehs";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Copyright (C) 2014, Yu Fukuzawa";
      maintainer = "Yu Fukuzawa <minpou.primer@gmail.com>";
      author = "Yu Fukuzawa";
      homepage = "http://github.com/minpou/ehs/";
      url = "";
      synopsis = "embedded Haskell by using quasiquotes.";
      description = "embedded Haskell by using quasiquotes.";
      buildType = "Simple";
    };
    components = {
      "ehs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.template-haskell)
          (hsPkgs.dlist)
        ];
      };
    };
  }