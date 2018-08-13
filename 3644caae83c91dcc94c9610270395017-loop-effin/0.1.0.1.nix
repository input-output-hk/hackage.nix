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
        name = "loop-effin";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Hiromi ISHII 2014";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "https://github.com/konn/loop-effin";
      url = "";
      synopsis = "control-monad-loop port for effin";
      description = "control-monad-loop like loop structure for effin.";
      buildType = "Simple";
    };
    components = {
      "loop-effin" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.effin)
        ];
      };
    };
  }