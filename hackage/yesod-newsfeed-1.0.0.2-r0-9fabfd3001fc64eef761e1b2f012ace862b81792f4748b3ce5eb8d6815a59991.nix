{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      blaze_html_0_5 = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "yesod-newsfeed";
        version = "1.0.0.2";
      };
      license = "MIT";
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
          (hsPkgs.xml-conduit)
        ] ++ (if flags.blaze_html_0_5
          then [
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
          ]
          else [ (hsPkgs.blaze-html) ]);
      };
    };
  }