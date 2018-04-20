{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pureMD5";
          version = "1.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas DuBuisson";
        author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "MD5 implementations that should become part of a ByteString Crypto package.";
        description = "An unrolled implementation of MD5 purely in Haskell.";
        buildType = "Simple";
      };
      components = {
        pureMD5 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.cereal
          ];
        };
      };
    }