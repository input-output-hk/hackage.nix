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
        name = "hackernews";
        version = "1.2.0.0";
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
      "library" = {
        depends  = [
          (hsPkgs.servant)
          (hsPkgs.QuickCheck)
          (hsPkgs.quickcheck-instances)
        ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.ghcjs-base)
            (hsPkgs.string-conversions)
            (hsPkgs.text)
          ]
          else [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.servant-client)
            (hsPkgs.http-client)
            (hsPkgs.string-conversions)
            (hsPkgs.http-types)
            (hsPkgs.text)
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
            (hsPkgs.hackernews)
            (hsPkgs.hspec)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-client)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
          ];
        };
      };
    };
  }