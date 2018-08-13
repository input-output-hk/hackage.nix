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
        name = "cirru-parser";
        version = "0.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jiyiyiyiony@gmail.com";
      author = "JiyinYiyong";
      homepage = "https://github.com/Cirru/parser.hs";
      url = "";
      synopsis = "Cirru Parser in Haskell";
      description = "Cirru Parser in Haskell";
      buildType = "Simple";
    };
    components = {
      "cirru-parser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.aeson)
        ];
      };
    };
  }