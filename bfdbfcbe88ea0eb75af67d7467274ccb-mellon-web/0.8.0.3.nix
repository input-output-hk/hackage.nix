{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      client-unlock-example = true;
      gpio-example = true;
      mock-example = true;
      test-doctests = true;
      test-hlint = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mellon-web";
        version = "0.8.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017, Quixoftic, LLC";
      maintainer = "Drew Hess <dhess-src@quixoftic.com>";
      author = "Drew Hess <dhess-src@quixoftic.com>";
      homepage = "https://github.com/quixoftic/mellon#readme";
      url = "";
      synopsis = "A REST web service for Mellon controllers";
      description = "The @mellon-web@ package wraps a @mellon-core@ controller in a REST\nweb service, making it possible to control physical access devices\nfrom an HTTP client. The package includes both a WAI application\nserver, and native Haskell client bindings for the service.\n\nLike the @mellon-core@ controller interface, the @mellon-web@ REST API\nis quite simple. There are only 3 methods:\n\n* @GET /time@ returns the system time on the server. This is made\navailable for diagnostic purposes, primarily to ensure the server\nhas an accurate clock.\n\n* @GET /state@ returns the controller's current state (either @Locked@\nor @Unlocked date@ where @date@ is the UTC time at which the\ncontroller will automatically lock again).\n\n* @PUT /state@ sets the controller's current state. Use this method to\nlock and unlock the controller.\n\nSee the included <API.md API.md> document for detailed documentation\non the REST service.\n\nNote that the @mellon-web@ server does not provide an authentication\nmechanism! You should proxy it behind a secure, authenticating HTTPS\nserver such as Nginx.";
      buildType = "Simple";
    };
    components = {
      "mellon-web" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.lucid)
          (hsPkgs.mellon-core)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.servant-docs)
          (hsPkgs.servant-lucid)
          (hsPkgs.servant-server)
          (hsPkgs.servant-swagger)
          (hsPkgs.servant-swagger-ui)
          (hsPkgs.swagger2)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.warp)
        ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0")) [
          (hsPkgs.fail)
          (hsPkgs.semigroups)
        ];
      };
      exes = {
        "gpio-mellon-server" = {
          depends  = pkgs.lib.optionals (!(!_flags.gpio-example)) [
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.hpio)
            (hsPkgs.mellon-core)
            (hsPkgs.mellon-gpio)
            (hsPkgs.mellon-web)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.warp)
          ];
        };
        "mellon-schedule-unlock" = {
          depends  = pkgs.lib.optionals (!(!_flags.client-unlock-example)) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.mellon-core)
            (hsPkgs.mellon-web)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.servant-client)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
        "mock-mellon-server" = {
          depends  = pkgs.lib.optionals (!(!_flags.mock-example)) [
            (hsPkgs.base)
            (hsPkgs.mellon-core)
            (hsPkgs.mellon-web)
            (hsPkgs.warp)
          ];
        };
      };
      tests = {
        "doctest" = {
          depends  = pkgs.lib.optionals (!(!_flags.test-doctests)) [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "hlint" = {
          depends  = pkgs.lib.optionals (!(!_flags.test-hlint)) [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.lucid)
            (hsPkgs.mellon-core)
            (hsPkgs.mellon-web)
            (hsPkgs.network)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.servant-docs)
            (hsPkgs.servant-lucid)
            (hsPkgs.servant-server)
            (hsPkgs.servant-swagger)
            (hsPkgs.servant-swagger-ui)
            (hsPkgs.swagger2)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }