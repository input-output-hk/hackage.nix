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
        name = "linx-gateway";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "Patrik Sandahl";
      maintainer = "kosmoskatten.software@gmail.com";
      author = "Patrik Sandahl";
      homepage = "https://github.com/kosmoskatten/linx-gateway";
      url = "";
      synopsis = "Implementation of the Enea LINX gateway protocol.";
      description = "Implementation of the Enea LINX gateway protocol. The\nprotocol enables clients to communicate through a\ngateway server. Base transport for the protocol is TCP.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.network)
        ];
      };
      exes = {
        "Ping" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.network)
            (hsPkgs.time)
          ];
        };
      };
      tests = {
        "linx-gateway-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }