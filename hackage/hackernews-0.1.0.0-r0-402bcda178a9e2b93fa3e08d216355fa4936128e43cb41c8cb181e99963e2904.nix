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
        version = "0.1.0.0";
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
          (hsPkgs.HsOpenSSL)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hspec)
          (hsPkgs.http-streams)
          (hsPkgs.io-streams)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hackernews)
            (hsPkgs.hspec)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }