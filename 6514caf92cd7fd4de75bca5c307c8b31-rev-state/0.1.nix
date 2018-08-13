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
        name = "rev-state";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "danburton.email@gmail.com";
      author = "Dan Burton";
      homepage = "https://github.com/DanBurton/rev-state#readme";
      url = "";
      synopsis = "Reverse State monad transformer";
      description = "It's like the State monad transformer.\nBut Reversed! The state goes backwards.";
      buildType = "Simple";
    };
    components = {
      "rev-state" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }