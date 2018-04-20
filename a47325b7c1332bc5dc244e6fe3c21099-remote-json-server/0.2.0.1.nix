{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "remote-json-server";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 The University of Kansas";
        maintainer = "JDawson@ku.edu";
        author = "Justin Dawson and Andy Gill";
        homepage = "";
        url = "";
        synopsis = "Web server wrapper for remote-json";
        description = "Web server, using scotty, for the JSON RPC protocol.";
        buildType = "Simple";
      };
      components = {
        remote-json-server = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.data-default-class
            hsPkgs.natural-transformation
            hsPkgs.remote-json
            hsPkgs.warp
            hsPkgs.scotty
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }