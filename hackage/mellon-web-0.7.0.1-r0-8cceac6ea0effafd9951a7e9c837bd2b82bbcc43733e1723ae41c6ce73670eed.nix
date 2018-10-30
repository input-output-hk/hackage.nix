{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      test-hlint = true;
      mock-example = true;
      gpio-example = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mellon-web";
        version = "0.7.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016, Drew Hess";
      maintainer = "Drew Hess <src@drewhess.com>";
      author = "Drew Hess <src@drewhess.com>";
      homepage = "https://github.com/dhess/mellon/";
      url = "";
      synopsis = "A REST web service for Mellon controllers";
      description = "The @mellon-web@ package wraps a @mellon-core@ controller in a REST\nweb service, making it possible to control physical access devices\nfrom an HTTP client. The package includes both a WAI application\nserver, and native Haskell client bindings for the service.\n\nLike the @mellon-core@ controller interface, the @mellon-web@ REST API\nis quite simple. There are only 3 methods:\n\n* @GET /time@ returns the system time on the server. This is made\navailable for diagnostic purposes, primarily to ensure the server\nhas an accurate clock.\n\n* @GET /state@ returns the controller's current state (either @Locked@\nor @Unlocked date@ where @date@ is the UTC time at which the\ncontroller will automatically lock again).\n\n* @PUT /state@ sets the controller's current state. Use this method to\nlock and unlock the controller.\n\nSee the included <API.md API.md> document for detailed documentation\non the REST service.\n\nNote that the @mellon-web@ server does not provide an authentication\nmechanism! You should proxy it behind a secure, authenticating HTTPS\nserver such as Nginx.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.lucid)
          (hsPkgs.mellon-core)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.servant-docs)
          (hsPkgs.servant-lucid)
          (hsPkgs.servant-server)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.warp)
        ];
      };
      exes = {
        "mock-mellon-server" = {
          depends  = pkgs.lib.optionals (!(!flags.mock-example)) [
            (hsPkgs.base)
            (hsPkgs.mellon-core)
            (hsPkgs.mellon-web)
            (hsPkgs.warp)
          ];
        };
        "gpio-mellon-server" = {
          depends  = pkgs.lib.optionals (!(!flags.gpio-example)) [
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
      };
      tests = {
        "hlint" = {
          depends  = pkgs.lib.optionals (!(!flags.test-hlint)) [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.lucid)
            (hsPkgs.mellon-core)
            (hsPkgs.network)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.servant-docs)
            (hsPkgs.servant-lucid)
            (hsPkgs.servant-server)
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