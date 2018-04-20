{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-server";
          version = "0.10";
        };
        license = "BSD-3-Clause";
        copyright = "2014-2016 Zalora South East Asia Pte Ltd, Servant Contributors";
        maintainer = "haskell-servant-maintainers@googlegroups.com";
        author = "Servant Contributors";
        homepage = "http://haskell-servant.readthedocs.org/";
        url = "";
        synopsis = "A family of combinators for defining webservices APIs and serving them";
        description = "A family of combinators for defining webservices APIs and serving them\n\nYou can learn about the basics in the <http://haskell-servant.readthedocs.org/en/stable/tutorial/index.html tutorial>.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-server/example/greet.hs Here>\nis a runnable example, with comments, that defines a dummy API and implements\na webserver that serves this API, using this package.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-server/CHANGELOG.md CHANGELOG>";
        buildType = "Custom";
      };
      components = {
        servant-server = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.http-api-data
            hsPkgs.http-types
            hsPkgs.network-uri
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.safe
            hsPkgs.servant
            hsPkgs.split
            hsPkgs.string-conversions
            hsPkgs.system-filepath
            hsPkgs.filepath
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.transformers-compat
            hsPkgs.wai
            hsPkgs.wai-app-static
            hsPkgs.warp
            hsPkgs.word8
          ];
        };
        exes = {
          greet = {
            depends  = [
              hsPkgs.base
              hsPkgs.servant
              hsPkgs.servant-server
              hsPkgs.aeson
              hsPkgs.warp
              hsPkgs.wai
              hsPkgs.text
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.aeson
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.exceptions
              hsPkgs.hspec
              hsPkgs.hspec-wai
              hsPkgs.http-types
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.parsec
              hsPkgs.QuickCheck
              hsPkgs.resourcet
              hsPkgs.safe
              hsPkgs.servant
              hsPkgs.servant-server
              hsPkgs.should-not-typecheck
              hsPkgs.string-conversions
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.transformers-compat
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.warp
            ];
          };
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.servant
              hsPkgs.doctest
              hsPkgs.filemanip
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
        };
      };
    }