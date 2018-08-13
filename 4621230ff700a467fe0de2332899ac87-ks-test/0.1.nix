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
      specVersion = "1.6";
      identifier = {
        name = "ks-test";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "";
      url = "";
      synopsis = "Kolmogorov distribution and Kolmogorov-Smirnov test.";
      description = "Kolmogorov distribution and Kolmogorov-Smirnov test.";
      buildType = "Simple";
    };
    components = {
      "ks-test" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.gamma)
          (hsPkgs.random-fu)
          (hsPkgs.roots)
          (hsPkgs.vector)
        ];
      };
    };
  }