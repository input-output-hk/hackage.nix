{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gridfs";
          version = "0.1.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "2016 Martin Norbäck Olivers";
        maintainer = "brent.tubbs@gmail.com";
        author = "Martin Norbäck Olivers";
        homepage = "http://github.com/btubbs/haskell-gridfs#readme";
        url = "";
        synopsis = "GridFS (MongoDB file storage) implementation";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        gridfs = {
          depends  = [
            hsPkgs.base
            hsPkgs.bson
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.monad-control
            hsPkgs.mongoDB
            hsPkgs.mtl
            hsPkgs.pureMD5
            hsPkgs.resourcet
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
      };
    }