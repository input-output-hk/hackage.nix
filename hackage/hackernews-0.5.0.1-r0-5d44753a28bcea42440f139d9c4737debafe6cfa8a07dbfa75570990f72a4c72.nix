{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { ghcjs = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hackernews"; version = "0.5.0.1"; };
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
        depends = if flags.ghcjs
          then [
            (hsPkgs.ghcjs-base)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.either)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            ]
          else [
            (hsPkgs.HsOpenSSL)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.either)
            (hsPkgs.http-streams)
            (hsPkgs.io-streams)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hackernews)
            (hsPkgs.hspec)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }