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
      specVersion = "1.10";
      identifier = {
        name = "hs-multiaddr";
        version = "0.1.4";
      };
      license = "Apache-2.0";
      copyright = "(c) Matrix AI 2017";
      maintainer = "roger.qiu@matrix.ai";
      author = "CMCDragonkai,\nQuoc-An Ho";
      homepage = "https://github.com/MatrixAI/hs-multiaddr#readme";
      url = "";
      synopsis = "Multiaddr library";
      description = "Multiaddr is self-describing way to represent addresses that support any standard network protocol. Multiaddr has a binary packed format, and nice string representation. It is possible to encapsulate addresses within each other.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytes)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.filepath)
          (hsPkgs.hs-multihash)
          (hsPkgs.iproute)
          (hsPkgs.sandi)
        ];
      };
      tests = {
        "hs-multiaddr-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.either-unwrap)
            (hsPkgs.hs-multiaddr)
            (hsPkgs.hs-multihash)
            (hsPkgs.hspec)
            (hsPkgs.iproute)
            (hsPkgs.sandi)
          ];
        };
      };
    };
  }