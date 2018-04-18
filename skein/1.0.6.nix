{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      reference = false;
      force-endianness = false;
      big-endian = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "skein";
          version = "1.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
        author = "Felipe Lessa <felipe.lessa@gmail.com>, Doug Whiting";
        homepage = "https://github.com/meteficha/skein";
        url = "";
        synopsis = "Skein, a family of cryptographic hash functions.  Includes Skein-MAC as well.";
        description = "Skein (<http://www.skein-hash.info/>) is a family of fast\nsecure cryptographic hash functions designed by Niels\nFerguson, Stefan Lucks, Bruce Schneier, Doug Whiting, Mihir\nBellare, Tadayoshi Kohno, Jon Callas and Jesse Walker.\n\nThis package uses bindings to the optimized C implementation\nof Skein.  We provide a high-level interface (see module\n\"Crypto.Skein\") to some of the Skein use cases.  We also\nprovide a low-level interface (see module\n\"Crypto.Skein.Internal\") should you need to use Skein in a\ndifferent way.\n\nCurrently we have support for Skein as cryptographic hash\nfunction as Skein as a message authentication code\n(Skein-MAC).  For examples of how to use this package, see\n\"Crypto.Skein\" module documentation.\n\nThis package includes Skein v1.3. Versions of this package\nbefore 1.0.0 implemented Skein v1.1.";
        buildType = "Simple";
      };
      components = {
        skein = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.tagged
            hsPkgs.crypto-api
          ];
        };
        tests = {
          runtests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.tagged
              hsPkgs.crypto-api
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.skein
            ];
          };
        };
      };
    }