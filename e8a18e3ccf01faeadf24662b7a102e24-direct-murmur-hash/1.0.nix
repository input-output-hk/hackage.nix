{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.12";
        identifier = {
          name = "direct-murmur-hash";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013 Irene Knapp";
        maintainer = "irene.knapp@icloud.com";
        author = "Irene Knapp <irene.knapp@icloud.com>";
        homepage = "http://ireneknapp.com/software/";
        url = "";
        synopsis = "An implementation of the MurmurHash3 algorithm";
        description = "";
        buildType = "Simple";
      };
      components = {
        "direct-murmur-hash" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }