{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "scotty-tls";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "djohnson.m@gmail.com";
        author = "David Johnson";
        homepage = "https://github.com/dmjio/scotty-tls.git";
        url = "";
        synopsis = "TLS for Scotty";
        description = "Run your Scotty apps over TLS";
        buildType = "Simple";
      };
      components = {
        "scotty-tls" = {
          depends  = [
            hsPkgs.base
            hsPkgs.scotty
            hsPkgs.warp
            hsPkgs.warp-tls
            hsPkgs.wai
            hsPkgs.transformers
          ];
        };
      };
    }