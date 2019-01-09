{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "qr-imager"; version = "2.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016-2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/QRImager#readme";
      url = "";
      synopsis = "Library to generate images.";
      description = "Library for generating images containing QR codes, from bytestrings and objects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.JuicyPixels)
          (hsPkgs.vector)
          (hsPkgs.bytestring)
          (hsPkgs.microlens)
          (hsPkgs.cryptonite)
          (hsPkgs.jose-jwt)
          (hsPkgs.directory)
          (hsPkgs.haskell-qrencode)
          (hsPkgs.process)
          (hsPkgs.split)
          ];
        pkgconfig = [ (pkgconfPkgs.libqrencode) ];
        };
      tests = {
        "test-lib" = {
          depends = [ (hsPkgs.base) (hsPkgs.qr-imager) (hsPkgs.hspec) ];
          };
        };
      };
    }