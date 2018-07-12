{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "uri-enumerator-file";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michaels@suite-sol.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/xml";
        url = "";
        synopsis = "uri-enumerator backend for the file scheme";
        description = "uri-enumerator backend for the file scheme";
        buildType = "Simple";
      };
      components = {
        "uri-enumerator-file" = {
          depends  = [
            hsPkgs.base
            hsPkgs.enumerator
            hsPkgs.text
            hsPkgs.system-filepath
            hsPkgs.system-fileio
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.containers
            hsPkgs.monad-control
            hsPkgs.uri-enumerator
          ];
        };
      };
    }