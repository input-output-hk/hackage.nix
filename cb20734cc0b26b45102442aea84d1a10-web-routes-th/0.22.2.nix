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
        name = "web-routes-th";
        version = "0.22.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "partners@seereason.com";
      author = "jeremy@seereason.com";
      homepage = "";
      url = "";
      synopsis = "Support for deriving PathInfo using Template Haskell";
      description = "";
      buildType = "Simple";
    };
    components = {
      "web-routes-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.split)
          (hsPkgs.web-routes)
        ];
      };
      tests = {
        "Test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            (hsPkgs.web-routes)
            (hsPkgs.web-routes-th)
          ];
        };
      };
    };
  }