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
        name = "elm-yesod";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2011-2013 Vincent Ambo";
      maintainer = "tazjin@gmail.com";
      author = "Vincent Ambo";
      homepage = "http://elm-lang.org";
      url = "";
      synopsis = "The Elm language Yesod compatibility module.";
      description = "This module provides a simple function to embed Elm code\nas a Yesod widget.";
      buildType = "Simple";
    };
    components = {
      "elm-yesod" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-markup)
          (hsPkgs.Elm)
          (hsPkgs.yesod-core)
          (hsPkgs.shakespeare-js)
          (hsPkgs.text)
        ];
      };
    };
  }