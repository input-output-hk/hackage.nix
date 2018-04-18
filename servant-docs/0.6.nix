{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-docs";
          version = "0.6";
        };
        license = "BSD-3-Clause";
        copyright = "2014-2016 Zalora South East Asia Pte Ltd, Servant Contributors";
        maintainer = "haskell-servant-maintainers@googlegroups.com";
        author = "Servant Contributors";
        homepage = "http://haskell-servant.github.io/";
        url = "";
        synopsis = "generate API docs for your servant webservice";
        description = "Library for generating API docs from a servant API definition.\n\nRunnable example <https://github.com/haskell-servant/servant-docs/blob/master/example/greet.hs here>.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-docs/CHANGELOG.md CHANGELOG>";
        buildType = "Simple";
      };
      components = {
        servant-docs = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.bytestring
            hsPkgs.bytestring-conversion
            hsPkgs.case-insensitive
            hsPkgs.hashable
            hsPkgs.http-media
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.servant
            hsPkgs.string-conversions
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.control-monad-omega
          ];
        };
        exes = {
          greet-docs = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring-conversion
              hsPkgs.lens
              hsPkgs.servant
              hsPkgs.servant-docs
              hsPkgs.string-conversions
              hsPkgs.text
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.servant
              hsPkgs.servant-docs
              hsPkgs.string-conversions
            ];
          };
        };
      };
    }