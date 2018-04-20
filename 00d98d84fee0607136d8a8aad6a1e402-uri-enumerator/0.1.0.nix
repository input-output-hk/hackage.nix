{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "uri-enumerator";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michaels@suite-sol.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/xml";
        url = "";
        synopsis = "Read and write URIs";
        description = "Read and write URIs";
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