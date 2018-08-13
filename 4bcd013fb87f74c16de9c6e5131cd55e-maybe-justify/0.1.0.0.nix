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
      specVersion = "1.10";
      identifier = {
        name = "maybe-justify";
        version = "0.1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "tak@ispabuse.org";
      author = "taksuyu";
      homepage = "";
      url = "";
      synopsis = "Simple higher order function for Maybe";
      description = "";
      buildType = "Simple";
    };
    components = {
      "maybe-justify" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "maybe-justify-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.maybe-justify)
          ];
        };
      };
    };
  }