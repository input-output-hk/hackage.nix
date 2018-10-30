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
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Roger Qiu";
      maintainer = "roger.qiu@matrix.ai";
      author = "CMCDragonkai";
      homepage = "https://github.com/MatrixAI/haskell-multiaddr#readme";
      url = "";
      synopsis = "Multiaddr Library for LibP2P";
      description = "Multiaddr is self-describing way to represent addresses that support any standard network protocol.\nMultiaddr has a binary packed format, and nice string representation.\nIt is possible to encapsulate addresses within each other.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytes)
          (hsPkgs.sandi)
          (hsPkgs.cereal)
          (hsPkgs.iproute)
          (hsPkgs.filepath)
          (hsPkgs.multihash)
        ];
      };
      tests = {
        "haskell-multiaddr-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hs-multiaddr)
            (hsPkgs.hspec)
            (hsPkgs.iproute)
            (hsPkgs.sandi)
            (hsPkgs.bytestring)
            (hsPkgs.multihash)
            (hsPkgs.either-unwrap)
          ];
        };
      };
    };
  }