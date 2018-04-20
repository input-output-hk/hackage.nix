{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-middleware-verbs";
          version = "0.0.3";
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
            hsPkgs.errors
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.wai
            hsPkgs.wai-transformers
          ];
        };
      };
    }