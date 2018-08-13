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
      specVersion = "1.6";
      identifier = {
        name = "yesod-newsfeed";
        version = "1.6";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman, Patrick Brisbin";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Helper functions and data types for producing News feeds.";
      description = "API docs and the README are available at <http://www.stackage.org/package/yesod-newsfeed>";
      buildType = "Simple";
    };
    components = {
      "yesod-newsfeed" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod-core)
          (hsPkgs.time)
          (hsPkgs.shakespeare)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.xml-conduit)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.containers)
        ];
      };
    };
  }