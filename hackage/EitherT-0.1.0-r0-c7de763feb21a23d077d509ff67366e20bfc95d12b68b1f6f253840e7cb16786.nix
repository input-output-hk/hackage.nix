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
      specVersion = "0";
      identifier = {
        name = "EitherT";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eyal Lotem <eyal.lotem+hackage@gmail.com>";
      author = "Eyal Lotem <eyal.lotem+hackage@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "EitherT monad transformer";
      description = "Support for computations with informative failures.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }