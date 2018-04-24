{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-middleware-throttle";
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015, Christopher Reichert";
        maintainer = "creichert07@gmail.com";
        author = "Christopher Reichert";
        homepage = "";
        url = "";
        synopsis = "WAI Middleware for Request Throttling";
        description = "WAI Middleware for request rate limiting and throttling.\n\nDesigned to be configured in the spirit of the NGinx module.";
        buildType = "Simple";
      };
      components = {
        wai-middleware-throttle = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.network
            hsPkgs.http-types
            hsPkgs.stm
            hsPkgs.token-bucket
            hsPkgs.hashable
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") hsPkgs.blaze-builder;
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.wai-middleware-throttle
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.hspec
              hsPkgs.http-types
              hsPkgs.HUnit
              hsPkgs.stm
              hsPkgs.transformers
            ];
          };
        };
      };
    }