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
        name = "async-extra";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "2017 Alexander Thiemann";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/async-extra#readme";
      url = "";
      synopsis = "Useful concurrent combinators";
      description = "Various concurrent combinators";
      buildType = "Simple";
    };
    components = {
      "async-extra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.deepseq)
          (hsPkgs.split)
        ];
      };
    };
  }