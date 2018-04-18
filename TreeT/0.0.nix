{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "TreeT";
          version = "0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "gopinath@eecs.oregonstate.edu";
        author = "Rahul Gopinath";
        homepage = "";
        url = "";
        synopsis = "Transformer for Data.Tree";
        description = "This library implements a transformer for the Data.Tree package";
        buildType = "Simple";
      };
      components = {
        TreeT = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
          ];
        };
      };
    }