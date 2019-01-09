{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "network-conduit-tls"; version = "1.1.2"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
          (hsPkgs.bytestring)
          (hsPkgs.tls)
          (hsPkgs.conduit-extra)
          (hsPkgs.conduit)
          (hsPkgs.network)
          (hsPkgs.transformers)
          (hsPkgs.cprng-aes)
          (hsPkgs.connection)
          (hsPkgs.monad-control)
          (hsPkgs.data-default)
          (hsPkgs.streaming-commons)
          ];
        };
      tests = {
        "test" = {
          depends = [
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