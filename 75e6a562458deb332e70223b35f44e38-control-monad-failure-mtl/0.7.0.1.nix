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
        name = "control-monad-failure-mtl";
        version = "0.7.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra, Michael Snoyman, Nicolas Pouillard";
      homepage = "http://github.com/pepeiborra/control-monad-failure";
      url = "";
      synopsis = "A class for monads which can fail with an error for mtl 1";
      description = "A class for monads which can fail with an error. Please note: this package is only applicable for the now-deprecated mtl 1. Since mtl 2 is compatible with the transformers package, users of mtl 2 should simply use the control-monad-failure package.";
      buildType = "Simple";
    };
    components = {
      "control-monad-failure-mtl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.failure)
          (hsPkgs.mtl)
        ];
      };
    };
  }