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
        name = "detour-via-uom";
        version = "1.0.0";
      };
      license = "MPL-2.0";
      copyright = "© 2017-2018 Phil de Joux, © 2017-2018 Block Scope Limited";
      maintainer = "phil.dejoux@blockscope.com";
      author = "Phil de Joux";
      homepage = "https://github.com/blockscope/flare-timing/tree/master/detour-via-uom#readme";
      url = "";
      synopsis = "JSON and CSV encoding for quantities.";
      description = "Lossy JSON and CSV encoding and decoding for newtype quantities via scientific with fixed decimal places and with units.";
      buildType = "Simple";
    };
    components = {
      "detour-via-uom" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.cassava)
          (hsPkgs.detour-via-sci)
          (hsPkgs.newtype)
          (hsPkgs.scientific)
          (hsPkgs.uom-plugin)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.cassava)
            (hsPkgs.detour-via-sci)
            (hsPkgs.doctest)
            (hsPkgs.newtype)
            (hsPkgs.scientific)
            (hsPkgs.uom-plugin)
          ];
        };
        "hlint" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.cassava)
            (hsPkgs.detour-via-sci)
            (hsPkgs.hlint)
            (hsPkgs.newtype)
            (hsPkgs.scientific)
            (hsPkgs.uom-plugin)
          ];
        };
      };
    };
  }