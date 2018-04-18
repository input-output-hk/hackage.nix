{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "goa";
          version = "3.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "none";
        author = "Paolo Martini, Philip K.F. HÃ¶lzenspies";
        homepage = "";
        url = "";
        synopsis = "GHCi bindings to lambdabot";
        description = "Offers an interface to be able to call Lambdabot commands within GHCi. Now works with recent lambdabots.";
        buildType = "Simple";
      };
      components = {
        goa = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.filepath
          ];
        };
      };
    }