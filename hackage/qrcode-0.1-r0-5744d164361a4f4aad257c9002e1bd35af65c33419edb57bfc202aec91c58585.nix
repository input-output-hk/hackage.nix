{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { prof = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "qrcode"; version = "0.1"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.vector)
          ];
        };
      };
    }