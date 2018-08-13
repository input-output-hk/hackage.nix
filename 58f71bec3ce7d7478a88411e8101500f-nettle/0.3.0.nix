{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      usepkgconfig = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "nettle";
        version = "0.3.0";
      };
      license = "MIT";
      copyright = "Stefan Bühler <stbuehler@web.de>";
      maintainer = "Stefan Bühler <stbuehler@web.de>";
      author = "Stefan Bühler <stbuehler@web.de>";
      homepage = "https://github.com/stbuehler/haskell-nettle";
      url = "";
      synopsis = "safe nettle binding";
      description = "safe binding for the nettle (<http://www.lysator.liu.se/~nisse/nettle/nettle.html>) library.\nTested with 3.4, might work with 3.2 (but not earlier).";
      buildType = "Simple";
    };
    components = {
      "nettle" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.byteable)
          (hsPkgs.tagged)
          (hsPkgs.securemem)
          (hsPkgs.crypto-cipher-types)
        ];
        libs = pkgs.lib.optional (!_flags.usepkgconfig) (pkgs.nettle);
        pkgconfig = pkgs.lib.optional (_flags.usepkgconfig) (pkgconfPkgs.nettle);
      };
      tests = {
        "test-ciphers" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.array)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.crypto-cipher-types)
            (hsPkgs.crypto-cipher-tests)
            (hsPkgs.nettle)
          ];
        };
        "test-hashes" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.tagged)
            (hsPkgs.array)
            (hsPkgs.test-framework)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.nettle)
          ];
        };
        "test-hmac" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.tagged)
            (hsPkgs.array)
            (hsPkgs.test-framework)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.nettle)
          ];
        };
        "test-umac" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.tagged)
            (hsPkgs.array)
            (hsPkgs.test-framework)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.nettle)
          ];
        };
      };
    };
  }