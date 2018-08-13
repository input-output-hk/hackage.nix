{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "line";
        version = "1.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Jun <me@noraesae.net>";
      maintainer = "Jun <me@noraesae.net>";
      author = "Jun";
      homepage = "https://github.com/noraesae/line";
      url = "";
      synopsis = "Haskell SDK for the LINE API";
      description = "This package exports bindings to LINE APIs.\n\nIt provides the following features:\n\n* Internal auth signature validator\n\n* Webhook handled with handler function or WAI application\n\n* Functions and types for <https://devdocs.line.me/en/#messaging-api LINE Messaging API>\n\nFor example usages, please see the\n<https://github.com/noraesae/line/tree/master/examples examples> directory.";
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
          (hsPkgs.wreq)
          (hsPkgs.lens)
        ];
      };
      tests = {
        "line-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.line)
          ];
        };
      };
    };
  }