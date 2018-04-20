{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "scotty-rest";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015, Erlend Hamberg";
        maintainer = "erlend@hamberg.no";
        author = "Erlend Hamberg";
        homepage = "http://github.com/ehamberg/scotty-rest";
        url = "";
        synopsis = "Webmachine-style REST library for scotty";
        description = "Webmachine-like REST library for Scotty.";
        buildType = "Simple";
      };
      components = {
        scotty-rest = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-prelude
            hsPkgs.bytestring
            hsPkgs.convertible
            hsPkgs.data-default-class
            hsPkgs.http-date
            hsPkgs.http-media
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.scotty
            hsPkgs.string-conversions
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.wai
            hsPkgs.wai-extra
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.hspec-wai
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.scotty
              hsPkgs.scotty-rest
              hsPkgs.string-conversions
              hsPkgs.text
              hsPkgs.wai
            ];
          };
        };
      };
    }