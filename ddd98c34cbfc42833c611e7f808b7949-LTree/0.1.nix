{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "LTree";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "gopinath@eecs.oregonstate.edu";
        author = "Rahul Gopinath";
        homepage = "";
        url = "";
        synopsis = "Tree with only leaves carrying the data.";
        description = "This Haskell library provides an implementation of\na tree data type with content only in the leaves, and its\ncorresponding transformer.";
        buildType = "Simple";
      };
      components = {
        LTree = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }