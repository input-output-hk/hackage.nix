{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "leapseconds";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Ashley Yakeley";
      maintainer = "ashley@semantic.org";
      author = "Ashley Yakeley";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Interpretation of leap second files.";
      buildType = "Simple";
    };
    components = {
      "leapseconds" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.leapseconds)
          ];
        };
      };
    };
  }