{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "yesod-routes";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Efficient routing for Yesod.";
      description = "Provides an efficient routing system, a parser and TH code generation.";
      buildType = "Simple";
    };
    components = {
      "yesod-routes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.path-pieces)
        ];
      };
      tests = {
        "runtests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yesod-routes)
            (hsPkgs.text)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.template-haskell)
            (hsPkgs.path-pieces)
          ];
        };
      };
    };
  }