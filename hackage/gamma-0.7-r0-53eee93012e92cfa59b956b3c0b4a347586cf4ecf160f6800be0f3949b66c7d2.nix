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
      specVersion = "1.6";
      identifier = {
        name = "gamma";
        version = "0.7";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "/dev/null";
      url = "";
      synopsis = "Gamma function and related functions.";
      description = "Approximations of the gamma function, incomplete gamma\nfunctions, beta function, and factorials.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.continued-fractions)
          (hsPkgs.converge)
          (hsPkgs.template-haskell)
          (hsPkgs.vector)
        ];
      };
    };
  }