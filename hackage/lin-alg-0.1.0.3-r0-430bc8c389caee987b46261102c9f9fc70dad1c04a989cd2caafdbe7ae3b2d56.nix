{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "lin-alg";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2012";
      maintainer = "dagitj@gmail.com";
      author = "Jason Dagit";
      homepage = "";
      url = "";
      synopsis = "Low-dimensional matrices and vectors for graphics and physics";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.NumInstances)
          (hsPkgs.vector)
        ];
      };
    };
  }