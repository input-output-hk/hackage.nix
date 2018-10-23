{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "line";
        version = "4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Jun <me@noraesae.net>";
      maintainer = "Jun <me@noraesae.net>";
      author = "Jun";
      homepage = "https://github.com/utatti/line";
      url = "";
      synopsis = "Haskell SDK for the LINE API";
      description = "This package exports bindings to LINE APIs.\n\nIt provides the following features:\n\n* Internal auth signature validator\n\n* Webhook handled with handler function, WAI application, or Scotty action\n\n* Functions and types for <https://developers.line.me/en/docs/messaging-api/reference/>\n\nFor example usages, please see the\n<https://github.com/utatti/line/tree/master/examples examples> directory.";
      buildType = "Simple";
    };
    components = {
      "line" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.http-types)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.cryptohash-sha256)
          (hsPkgs.base64-bytestring)
          (hsPkgs.time)
          (hsPkgs.http-conduit)
          (hsPkgs.scotty)
        ];
      };
      tests = {
        "line-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.line)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.cryptohash-sha256)
            (hsPkgs.base64-bytestring)
            (hsPkgs.transformers)
            (hsPkgs.scotty)
            (hsPkgs.aeson)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.time)
          ];
        };
      };
    };
  }