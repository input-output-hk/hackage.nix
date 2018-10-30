{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "nakadi-client";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Moritz Schulte";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Schulte";
      homepage = "https://github.com/mtesseract/nakadi-haskell#readme";
      url = "";
      synopsis = "Client library for the Nakadi Event Broker";
      description = "This package implements a client library for interacting with the Nakadi event broker system developed by Zalando.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.conduit-combinators)
          (hsPkgs.iso8601-time)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.hashable)
          (hsPkgs.aeson)
          (hsPkgs.monad-logger)
          (hsPkgs.text)
          (hsPkgs.lens)
          (hsPkgs.http-types)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-conduit)
          (hsPkgs.resourcet)
          (hsPkgs.uuid)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.scientific)
          (hsPkgs.safe-exceptions)
          (hsPkgs.unordered-containers)
          (hsPkgs.time)
          (hsPkgs.split)
          (hsPkgs.aeson-casing)
          (hsPkgs.tasty)
          (hsPkgs.template-haskell)
          (hsPkgs.retry)
        ];
      };
      tests = {
        "nakadi-client-test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.conduit-combinators)
            (hsPkgs.iso8601-time)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.hashable)
            (hsPkgs.aeson)
            (hsPkgs.monad-logger)
            (hsPkgs.text)
            (hsPkgs.lens)
            (hsPkgs.http-types)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-conduit)
            (hsPkgs.resourcet)
            (hsPkgs.uuid)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.scientific)
            (hsPkgs.safe-exceptions)
            (hsPkgs.unordered-containers)
            (hsPkgs.time)
            (hsPkgs.split)
            (hsPkgs.aeson-casing)
            (hsPkgs.tasty)
            (hsPkgs.template-haskell)
            (hsPkgs.retry)
            (hsPkgs.base)
            (hsPkgs.classy-prelude)
            (hsPkgs.nakadi-client)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.http-client)
            (hsPkgs.http-conduit)
            (hsPkgs.aeson)
            (hsPkgs.lens-aeson)
            (hsPkgs.text)
            (hsPkgs.say)
            (hsPkgs.random)
            (hsPkgs.async)
            (hsPkgs.retry)
          ];
        };
      };
    };
  }