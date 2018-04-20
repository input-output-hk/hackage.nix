{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fb";
          version = "1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Felipe Lessa and Sibi Prabakaran";
        maintainer = "Sibi <sibi@psibi.in>";
        author = "Felipe Lessa, Sibi Prabakaran";
        homepage = "https://github.com/psibi/fb";
        url = "";
        synopsis = "Bindings to Facebook's API.";
        description = "This package exports bindings to Facebook's APIs (see\n<http://developers.facebook.com/>).  Does not have any external\ndependencies and tries to use as little resources (such as\nmemory, sockets and CPU) as possible by using packages such as\n@aeson@, @attoparsec@, @bytestring@, @conduit@, @http-conduit@,\n@text@ and others.\n\nWhile we would like to have a complete binding to Facebook's\nAPI, this package is being developed on demand.  If you need\nsomething that has not been implemented yet, please send a pull\nrequest or file an issue on GitHub\n(<https://github.com/psibi/fb/issues>).";
        buildType = "Simple";
      };
      components = {
        fb = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base16-bytestring
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.crypto-api
            hsPkgs.cryptohash
            hsPkgs.cryptohash-cryptoapi
            hsPkgs.data-default
            hsPkgs.http-client
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.monad-logger
            hsPkgs.old-locale
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unliftio
            hsPkgs.unliftio-core
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          runtests = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.fb
              hsPkgs.hspec
              hsPkgs.http-conduit
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unliftio
            ];
          };
        };
      };
    }