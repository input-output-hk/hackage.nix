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
      specVersion = "1.2";
      identifier = {
        name = "web-browser-in-haskell";
        version = "1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Akash Fulchand Jagdhane <akashjagdhane@gmail.com>";
      author = "Akash Fulchand Jagdhane <akashjagdhane@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Web Browser In Haskell";
      description = "The package is my first attempt to build a WEB BROWSER by using webkit.\nIts a multitab web browser which doesn't store any history but provides previous and next tab facility.\nThe following links is to my blog article containing some screenshots of this browser including steps to install adobe flash player to this web browser.\nLink : \"http://ilovehaskell.blogspot.in/2014/05/web-browser-in-haskell.html\"";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.gtk)
          (hsPkgs.webkit)
        ];
      };
    };
  }