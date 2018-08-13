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
      specVersion = "1.8";
      identifier = {
        name = "transformers-runnable";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jan.Bessai@tu-dortmund.de";
      author = "Jan Bessai";
      homepage = "https://github.com/JanBessai/transformers-runnable";
      url = "";
      synopsis = "A unified interface for the run operation of monad transformers";
      description = "";
      buildType = "Simple";
    };
    components = {
      "transformers-runnable" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
      };
    };
  }