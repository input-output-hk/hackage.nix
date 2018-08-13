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
        name = "inflist";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2012 James H. Fisher <jameshfisher@gmail.com>";
      maintainer = "James H. Fisher <jameshfisher@gmail.com>";
      author = "James H. Fisher <jameshfisher@gmail.com>";
      homepage = "https://bitbucket.org/eegg/inflist";
      url = "";
      synopsis = "An infinite list type and operations thereon.";
      description = "An infinite list type and operations thereon.";
      buildType = "Simple";
    };
    components = {
      "inflist" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "test-inflist" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }