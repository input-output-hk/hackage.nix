{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "uri-conduit";
          version = "0.5.0.1";
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
        "uri-conduit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.containers
            hsPkgs.failure
            hsPkgs.monad-control
            hsPkgs.system-filepath
            hsPkgs.system-fileio
          ];
        };
      };
    }