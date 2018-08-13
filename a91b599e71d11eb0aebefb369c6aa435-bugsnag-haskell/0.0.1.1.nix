{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      examples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bugsnag-haskell";
        version = "0.0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "pbrisbin@gmail.com";
      author = "Patrick Brisbin";
      homepage = "https://github.com/pbrisbin/bugsnag-haskell#readme";
      url = "";
      synopsis = "Bugsnag error reporter for Haskell";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "bugsnag-haskell" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.iproute)
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.th-lift-instances)
          (hsPkgs.time)
          (hsPkgs.ua-parser)
          (hsPkgs.wai)
        ];
      };
      exes = {
        "example-cli" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bugsnag-haskell)
          ];
        };
        "example-simple" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bugsnag-haskell)
          ];
        };
        "example-warp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bugsnag-haskell)
            (hsPkgs.wai)
            (hsPkgs.warp)
          ];
        };
        "example-yesod" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bugsnag-haskell)
            (hsPkgs.exceptions)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.yesod-core)
          ];
        };
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-qq)
            (hsPkgs.base)
            (hsPkgs.bugsnag-haskell)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
    };
  }