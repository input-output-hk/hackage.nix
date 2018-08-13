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
        name = "encoding-io";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Shao Cheng";
      maintainer = "Shao Cheng <astrohavoc@gmail.com>";
      author = "";
      homepage = "https://github.com/TerrorJack/encoding-io#readme";
      url = "";
      synopsis = "Encoding-aware file I/O.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "encoding-io" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.chunked-data)
          (hsPkgs.deepseq)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }