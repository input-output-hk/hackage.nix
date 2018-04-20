{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "network-api-support";
          version = "0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 Mark Hibberd";
        maintainer = "Mark Hibberd <mark@hibberd.id.au>";
        author = "Mark Hibberd <mark@hibberd.id.au>";
        homepage = "https://github.com/markhibberd/network-api-support";
        url = "";
        synopsis = "Toolkit for building http client libraries over Network.Http.Conduit";
        description = "Toolkit for building http client libraries over Network.Http.Conduit.\n\n/Note/: Examples of use can be found in the pin and postmark client\nlibraries.";
        buildType = "Simple";
      };
      components = {
        network-api-support = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.http-types
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.text
            hsPkgs.time
            hsPkgs.tls
          ];
        };
      };
    }