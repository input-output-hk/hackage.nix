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
        name = "bounded-array";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brian@brianmckenna.org";
      author = "Brian McKenna";
      homepage = "";
      url = "";
      synopsis = "Arrays with a value for every index";
      description = "Arrays with a value for every index.";
      buildType = "Simple";
    };
    components = {
      "bounded-array" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
        ];
      };
    };
  }