{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-crypto-api = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "crypto-conduit"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa <felipe.lessa@gmail.com>";
      homepage = "https://github.com/meteficha/crypto-conduit";
      url = "";
      synopsis = "Conduit interface for cryptographic operations (from crypto-api).";
      description = "This package contains everything that you need to use a\ncryptographic package that supports the @crypto-api@ package\nusing conduits from the @conduit@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.conduit)
          (hsPkgs.transformers)
          ] ++ [ (hsPkgs.crypto-api) ];
        };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.crypto-api)
            (hsPkgs.conduit)
            (hsPkgs.transformers)
            (hsPkgs.cryptocipher)
            (hsPkgs.cryptohash)
            (hsPkgs.skein)
            (hsPkgs.hspec)
            (hsPkgs.crypto-conduit)
            ];
          };
        };
      };
    }