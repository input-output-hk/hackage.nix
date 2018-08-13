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
        name = "xml-hamlet";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Hamlet-style quasiquoter for XML content";
      description = "";
      buildType = "Simple";
    };
    components = {
      "xml-hamlet" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.xml-enumerator)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "runtests" = {
          depends  = [
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }