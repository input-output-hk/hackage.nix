{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ekg";
          version = "0.4.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "johan.tibell@gmail.com";
        author = "Johan Tibell";
        homepage = "https://github.com/tibbe/ekg";
        url = "";
        synopsis = "Remote monitoring of processes";
        description = "This library lets you remotely monitor a running process over HTTP.\nIt provides a simple way to integrate a monitoring server into any\napplication.";
        buildType = "Simple";
      };
      components = {
        ekg = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.ekg-core
            hsPkgs.filepath
            hsPkgs.network
            hsPkgs.snap-core
            hsPkgs.snap-server
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
      };
    }