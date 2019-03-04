{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "qrcode-core"; version = "0.9.0"; };
      license = "MIT";
      copyright = "2018 ALeX Kazik";
      maintainer = "alex@kazik.de";
      author = "ALeX Kazik";
      homepage = "https://github.com/alexkazik/qrcode#readme";
      url = "";
      synopsis = "QR code library in pure Haskell";
      description = "Please see the README on GitHub at <https://github.com/alexkazik/qrcode/qrcode-core#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.dlist)
          (hsPkgs.primitive)
          (hsPkgs.text)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups);
        };
      };
    }