{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rollbar";
          version = "1.1.0";
        };
        license = "MIT";
        copyright = "Daggerboard Inc. makers of docmunch.com, Azara Solutions Inc.";
        maintainer = "Azara <engineering@azara.io>, Jeff Taggart <jeff@jetaggart.com>, Steven MacCoun <theraccoun@gmail.com>";
        author = "Daggerboard Inc. Greg Weber, Azara Solutions Inc. Jeff Taggart";
        homepage = "https://github.com/azara/rollbar-haskell";
        url = "";
        synopsis = "error tracking through rollbar.com";
        description = "";
        buildType = "Simple";
      };
      components = {
        rollbar = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.vector
            hsPkgs.network
            hsPkgs.basic-prelude
            hsPkgs.monad-control
            hsPkgs.resourcet
            hsPkgs.http-conduit
            hsPkgs.lifted-base
          ];
        };
      };
    }