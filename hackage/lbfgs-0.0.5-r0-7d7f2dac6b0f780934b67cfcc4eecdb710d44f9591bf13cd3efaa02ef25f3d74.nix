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
      specVersion = "1.4";
      identifier = {
        name = "lbfgs";
        version = "0.0.5";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Daniël de Kok";
      maintainer = "Daniël de Kok <me@danieldk.eu>";
      author = "Daniël de Kok <me@danieldk.eu>";
      homepage = "";
      url = "";
      synopsis = "L-BFGS optimization";
      description = "Limited memory BFGS solver for non-linear optimization\nproblems.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
        ];
      };
    };
  }