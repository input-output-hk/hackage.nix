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
        name = "plur";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Joel Burget";
      maintainer = "joelburget@gmail.com";
      author = "Joel Burget";
      homepage = "";
      url = "";
      synopsis = "Plurality monad: Zero, one, or at least two.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "plur" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
        ];
      };
    };
  }