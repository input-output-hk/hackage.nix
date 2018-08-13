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
      "pipes-random" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mwc-random)
          (hsPkgs.pipes)
          (hsPkgs.vector)
        ];
      };
    };
  }