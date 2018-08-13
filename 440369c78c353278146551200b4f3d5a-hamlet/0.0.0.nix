{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      buildtests = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hamlet";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://docs.yesodweb.com/hamlet/";
      url = "";
      synopsis = "Haml-like template files that are compile-time checked";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hamlet" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.web-encodings)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
        ];
      };
      exes = {
        "runtests" = {
          depends  = pkgs.lib.optionals (_flags.buildtests) [
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework)
          ];
        };
      };
    };
  }