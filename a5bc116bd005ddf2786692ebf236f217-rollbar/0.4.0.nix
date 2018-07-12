{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rollbar";
          version = "0.4.0";
        };
        license = "MIT";
        copyright = "Daggerboard Inc. makers of docmunch.com";
        maintainer = "Azara <azara@engineering.com>";
        author = "Daggerboard Inc. Greg Weber";
        homepage = "https://github.com/azara/rollbar-haskell";
        url = "";
        synopsis = "error tracking through rollbar.com";
        description = "";
        buildType = "Simple";
      };
      components = {
        "rollbar" = {
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
          ];
        };
      };
    }