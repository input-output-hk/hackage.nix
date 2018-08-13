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
      specVersion = "1.8";
      identifier = {
        name = "css-text";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "CSS parser and renderer.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "css-text" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.attoparsec-text)
        ];
      };
      tests = {
        "runtests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.attoparsec-text)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }