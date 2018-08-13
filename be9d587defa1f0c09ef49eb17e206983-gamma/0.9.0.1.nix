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
        name = "gamma";
        version = "0.9.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "https://github.com/mokus0/gamma";
      url = "";
      synopsis = "Gamma function and related functions.";
      description = "Approximations of the gamma function, incomplete gamma\nfunctions, and factorials.";
      buildType = "Simple";
    };
    components = {
      "gamma" = {
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