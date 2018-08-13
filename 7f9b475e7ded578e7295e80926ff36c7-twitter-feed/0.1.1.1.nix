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
        name = "twitter-feed";
        version = "0.1.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "justin@stackbuilders.com";
      author = "Justin Leitgeb, Andrés Torres";
      homepage = "https://github.com/stackbuilders/twitter-feed";
      url = "";
      synopsis = "Client for fetching Twitter timeline via Oauth";
      description = "Fetches a user timeline from Twitter, and optionally linkifies the results using the Twitter entity API.";
      buildType = "Simple";
    };
    components = {
      "twitter-feed" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.authenticate-oauth)
          (hsPkgs.aeson)
          (hsPkgs.http-conduit)
        ];
      };
      tests = {
        "twitter-library" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.containers)
            (hsPkgs.authenticate-oauth)
            (hsPkgs.aeson)
            (hsPkgs.http-conduit)
          ];
        };
      };
    };
  }