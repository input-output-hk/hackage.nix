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
        name = "pipes-random";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "colingw@gmail.com";
      author = "Colin Woodbury";
      homepage = "";
      url = "";
      synopsis = "Producers for handling randomness.";
      description = "Producers for handling randomness.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mwc-random)
          (hsPkgs.pipes)
          (hsPkgs.vector)
        ];
      };
    };
  }