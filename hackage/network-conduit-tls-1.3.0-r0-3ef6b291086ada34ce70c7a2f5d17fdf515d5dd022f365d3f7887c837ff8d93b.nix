{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "network-conduit-tls";
        version = "1.3.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/conduit";
      url = "";
      synopsis = "Create TLS-aware network code with conduits";
      description = "Uses the tls package for a pure-Haskell implementation.";
      buildType = "Simple";
    };
    components = {
      "network-conduit-tls" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.tls)
          (hsPkgs.conduit-extra)
          (hsPkgs.conduit)
          (hsPkgs.network)
          (hsPkgs.transformers)
          (hsPkgs.connection)
          (hsPkgs.streaming-commons)
          (hsPkgs.unliftio-core)
          (hsPkgs.data-default-class)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.connection)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.network-conduit-tls)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }