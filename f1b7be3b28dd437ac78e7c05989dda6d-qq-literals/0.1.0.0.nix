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
        name = "qq-literals";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2016-2017 Harry Garrood";
      maintainer = "harry@garrood.me";
      author = "Harry Garrood";
      homepage = "https://github.com/hdgarrood/qq-literals";
      url = "";
      synopsis = "Compile-time checked literal values via QuasiQuoters.";
      description = "qq-literals is a tiny Haskell library which gives you a way of easily\nconstructing QuasiQuoters for literals of any type a for which you can\nprovide a parsing function String -> Either String a.";
      buildType = "Simple";
    };
    components = {
      "qq-literals" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "qq-literals-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.qq-literals)
            (hsPkgs.template-haskell)
            (hsPkgs.network-uri)
          ];
        };
      };
    };
  }