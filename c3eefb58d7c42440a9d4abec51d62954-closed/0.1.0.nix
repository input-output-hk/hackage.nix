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
        name = "closed";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Front Row Education <engineering@frontrowed.com>";
      author = "Chris Parks <chris@frontrowed.com>";
      homepage = "https://github.com/frontrowed/closed#readme";
      url = "";
      synopsis = "Integers bounded by a closed interval";
      description = "Integers bounded by a closed interval";
      buildType = "Simple";
    };
    components = {
      "closed" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.aeson)
          (hsPkgs.cassava)
          (hsPkgs.hashable)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "readme" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.aeson)
            (hsPkgs.cassava)
            (hsPkgs.hashable)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.closed)
            (hsPkgs.hspec)
            (hsPkgs.markdown-unlit)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }