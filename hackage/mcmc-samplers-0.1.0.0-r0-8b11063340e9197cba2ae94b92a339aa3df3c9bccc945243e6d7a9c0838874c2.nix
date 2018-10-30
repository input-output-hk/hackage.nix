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
      specVersion = "1.10";
      identifier = {
        name = "mcmc-samplers";
        version = "0.1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "revenap@gmail.com";
      author = "Praveen Narayanan";
      homepage = "";
      url = "";
      synopsis = "A library of combinators to build MCMC kernels, proposals, and targets";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mwc-random)
          (hsPkgs.primitive)
          (hsPkgs.hmatrix)
          (hsPkgs.vector)
          (hsPkgs.statistics)
          (hsPkgs.containers)
        ];
      };
    };
  }