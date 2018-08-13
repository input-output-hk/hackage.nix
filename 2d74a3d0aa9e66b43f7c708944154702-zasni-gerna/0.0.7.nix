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
      specVersion = "1.8";
      identifier = {
        name = "zasni-gerna";
        version = "0.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "https://skami.iocikun.jp/haskell/packages/zasni-gerna";
      url = "";
      synopsis = "lojban parser (zasni gerna)";
      description = "lojban zasni gerna parser";
      buildType = "Simple";
    };
    components = {
      "zasni-gerna" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.papillon)
        ];
      };
    };
  }