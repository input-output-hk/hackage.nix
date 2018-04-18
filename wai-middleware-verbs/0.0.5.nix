{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-middleware-verbs";
          version = "0.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Route different middleware responses based on the incoming HTTP verb.";
        description = "";
        buildType = "Simple";
      };
      components = {
        wai-middleware-verbs = {
          depends  = [
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.composition-extra
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.errors
            hsPkgs.http-types
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.wai
            hsPkgs.wai-transformers
          ];
        };
      };
    }