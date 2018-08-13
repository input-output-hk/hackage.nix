{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      prof = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "qrcode";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chris@kizzx2.com";
      author = "Chris Yuen";
      homepage = "";
      url = "";
      synopsis = "QR Code library in pure Haskell";
      description = "QR Code encoder (and future decoder) in pure Haskell.";
      buildType = "Simple";
    };
    components = {
      "qrcode" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.vector)
        ];
      };
    };
  }