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
        name = "hackernews";
        version = "1.0.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "";
      url = "";
      synopsis = "API for Hacker News";
      description = "API for news.ycombinator.com";
      buildType = "Simple";
    };
    components = {
      "hackernews" = {
        depends  = [
          (hsPkgs.servant)
        ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.ghcjs-base)
            (hsPkgs.string-conversions)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ]
          else [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.servant-client)
            (hsPkgs.http-client)
            (hsPkgs.string-conversions)
            (hsPkgs.http-types)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ]);
      };
      exes = {
        "example" = {
          depends  = if compiler.isGhcjs && true
            then [
              (hsPkgs.base)
              (hsPkgs.hackernews)
              (hsPkgs.ghcjs-base)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.hackernews)
              (hsPkgs.http-client-tls)
              (hsPkgs.http-client)
            ];
        };
        "ghcjs-tests" = {
          depends  = pkgs.lib.optionals (compiler.isGhcjs && true) [
            (hsPkgs.base)
            (hsPkgs.hackernews)
            (hsPkgs.ghcjs-base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.basic-sop)
            (hsPkgs.generics-sop)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.aeson)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      tests = {
        "ghc-tests" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.basic-sop)
            (hsPkgs.generics-sop)
            (hsPkgs.hackernews)
            (hsPkgs.hspec)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-client)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }