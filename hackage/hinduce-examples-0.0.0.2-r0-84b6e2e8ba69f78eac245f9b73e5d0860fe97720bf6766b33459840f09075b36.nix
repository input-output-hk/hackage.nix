{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hinduce-examples";
        version = "0.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hackage@roberthensing.nl";
      author = "Robert Hensing";
      homepage = "";
      url = "";
      synopsis = "Example data for hInduce";
      description = "Example data for use with hInduce";
      buildType = "Simple";
    };
    components = {
      "hinduce-examples" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.layout)
          (hsPkgs.hinduce-missingh)
          (hsPkgs.csv)
          (hsPkgs.hinduce-classifier)
          (hsPkgs.hinduce-classifier-decisiontree)
          (hsPkgs.hinduce-associations-apriori)
          (hsPkgs.convertible)
          (hsPkgs.containers)
          (hsPkgs.vector)
        ];
      };
    };
  }