{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "plotserver-api";
          version = "0.21";
        };
        license = "MIT";
        copyright = "";
        maintainer = "daniel.torok@prezi.com";
        author = "Daniel Torok";
        homepage = "";
        url = "";
        synopsis = "Plotserver API";
        description = "A lightweight API for Prezi's opensourced Plotserver (https:\\/\\/github.com\\/prezi\\/plotserver)";
        buildType = "Simple";
      };
      components = {
        plotserver-api = {
          depends  = [
            hsPkgs.base
            hsPkgs.curl
            hsPkgs.split
          ];
        };
      };
    }