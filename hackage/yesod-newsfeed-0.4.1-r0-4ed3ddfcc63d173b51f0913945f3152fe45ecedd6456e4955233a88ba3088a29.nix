{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "yesod-newsfeed";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman, Patrick Brisbin";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Helper functions and data types for producing News feeds.";
      description = "Helper functions and data types for producing News feeds.";
      buildType = "Simple";
    };
    components = {
      "yesod-newsfeed" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod-core)
          (hsPkgs.time)
          (hsPkgs.hamlet)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
    };
  }