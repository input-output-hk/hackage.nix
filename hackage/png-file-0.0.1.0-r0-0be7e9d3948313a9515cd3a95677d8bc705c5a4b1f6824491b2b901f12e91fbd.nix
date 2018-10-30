{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "png-file";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "https://skami.iocikun.jp/haskell/packages/png-file";
      url = "";
      synopsis = "read/write png file";
      description = "It's just alpha version now.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary-file)
          (hsPkgs.bytestring)
          (hsPkgs.zlib)
          (hsPkgs.array)
          (hsPkgs.template-haskell)
          (hsPkgs.monads-tf)
        ];
      };
    };
  }