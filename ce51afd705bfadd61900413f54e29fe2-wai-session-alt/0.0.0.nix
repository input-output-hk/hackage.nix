{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-session-alt";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "An alternative session middleware for WAI.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "wai-session-alt" = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.cookie
            hsPkgs.http-types
            hsPkgs.time
            hsPkgs.vault
            hsPkgs.wai-transformers
          ];
        };
      };
    }