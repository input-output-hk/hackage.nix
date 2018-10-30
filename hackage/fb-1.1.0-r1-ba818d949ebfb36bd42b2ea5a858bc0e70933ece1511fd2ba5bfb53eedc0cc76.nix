{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "fb";
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Prowdsponsor";
      maintainer = "Sibi <sibi@psibi.in>";
      author = "Felipe Lessa, Sibi";
      homepage = "https://github.com/psibi/fb";
      url = "";
      synopsis = "Bindings to Facebook's API.";
      description = "This package exports bindings to Facebook's APIs (see\n<http://developers.facebook.com/>).  Does not have any external\ndependencies and tries to use as little resources (such as\nmemory, sockets and CPU) as possible by using packages such as\n@aeson@, @attoparsec@, @bytestring@, @conduit@, @http-conduit@,\n@text@ and others.\n\nWhile we would like to have a complete binding to Facebook's\nAPI, this package is being developed on demand.  If you need\nsomething that has not been implemented yet, please send a pull\nrequest or file an issue on GitHub\n(<https://github.com/psibi/fb/issues>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lifted-base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.resourcet)
          (hsPkgs.data-default)
          (hsPkgs.http-types)
          (hsPkgs.http-conduit)
          (hsPkgs.http-client)
          (hsPkgs.attoparsec)
          (hsPkgs.unordered-containers)
          (hsPkgs.aeson)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.cereal)
          (hsPkgs.crypto-api)
          (hsPkgs.cryptohash)
          (hsPkgs.cryptohash-cryptoapi)
          (hsPkgs.monad-logger)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
        ];
      };
      tests = {
        "runtests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lifted-base)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.resourcet)
            (hsPkgs.conduit)
            (hsPkgs.http-conduit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.aeson)
            (hsPkgs.monad-control)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.fb)
          ];
        };
      };
    };
  }