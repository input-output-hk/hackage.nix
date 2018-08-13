{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "Etherbunny";
        version = "0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "nickburlett@mac.com";
      author = "Nick Burlett";
      homepage = "";
      url = "";
      synopsis = "A network analysis toolkit for haskell";
      description = "A network analysis toolkit for haskell, based on the Network.Pcap library. Currently not very useful, but getting there.";
      buildType = "Custom";
    };
    components = {
      "Etherbunny" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.haskell98)
          (hsPkgs.pcap)
          (hsPkgs.binary)
        ];
      };
      exes = {
        "etherbunny" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.haskell98)
            (hsPkgs.pcap)
            (hsPkgs.binary)
          ];
          libs = [ (pkgs."pcap") ];
        };
      };
    };
  }