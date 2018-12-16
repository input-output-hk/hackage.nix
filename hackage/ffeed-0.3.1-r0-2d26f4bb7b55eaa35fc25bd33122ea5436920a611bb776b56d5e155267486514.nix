{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { old-base = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "ffeed";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sof@forkio.com";
      author = "Sigbjorn Finne";
      homepage = "";
      url = "";
      synopsis = "Haskell binding to the FriendFeed API";
      description = "The hs-ffeed API binding lets you access friendfeed.com's\nresources and methods from Haskell. Implements the\nfull API, as specified at http://code.google.com/p/friendfeed-api/wiki/ApiDocumentation";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.HTTP)
          (hsPkgs.network)
          (hsPkgs.utf8-string)
          (hsPkgs.json)
        ] ++ [ (hsPkgs.base) ];
      };
      exes = {
        "main" = {
          depends = [ (hsPkgs.base) ];
        };
        "showPublic" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pretty)
          ];
        };
        "tweetStream" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pretty)
          ];
        };
      };
    };
  }