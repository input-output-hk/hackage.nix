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
      specVersion = "1.6";
      identifier = {
        name = "netlink";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Google Inc. 2010";
      maintainer = "Max Treskin <mtreskin@metachord.com>";
      author = "David Anderson";
      homepage = "http://netlink-hs.googlecode.com/";
      url = "";
      synopsis = "Netlink communication for Haskell";
      description = "Library to comminicate with Linux kernel via Netlink";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.monad-loops)
          (hsPkgs.unix)
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }