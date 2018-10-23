{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "papillon";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "https://skami.iocikun.jp/haskell/packages/papillon";
      url = "";
      synopsis = "packrat parser";
      description = "see examples directory";
      buildType = "Simple";
    };
    components = {
      "papillon" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.monads-tf)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "papillon" = {
          depends  = [
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.monads-tf)
            (hsPkgs.transformers)
            (hsPkgs.papillon)
          ];
        };
      };
    };
  }