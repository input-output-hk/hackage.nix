{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "uri-enumerator";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michaels@suite-sol.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/xml";
        url = "";
        synopsis = "Read and write URIs (deprecated)";
        description = "This package is deprecated in favor of uri-conduit.";
        buildType = "Simple";
      };
      components = {
        uri-enumerator = {
          depends  = [
            hsPkgs.base
            hsPkgs.enumerator
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.containers
            hsPkgs.failure
          ];
        };
      };
    }