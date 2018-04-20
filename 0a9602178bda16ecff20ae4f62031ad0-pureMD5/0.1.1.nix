{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "pureMD5";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas DuBuisson";
        author = "Thomas DuBuisson <thomas.dubuisosn@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "MD5 implementations that should become part of a ByteString Crypto package.";
        description = "A rolled (concise yet inefficient) and unrolled (more efficient, much less concise)\nversion of MD5 purely in Haskell.  Only the unrolled is exported.";
        buildType = "Simple";
      };
      components = {
        pureMD5 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
          ];
        };
      };
    }