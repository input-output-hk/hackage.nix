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
        name = "takahashi";
        version = "0.2.0.1";
      };
      license = "MIT";
      copyright = "(C) 2014 Tokiwo Ousaka";
      maintainer = "tokiwoousaka";
      author = "tokiwoousaka";
      homepage = "";
      url = "";
      synopsis = "library for takahashi method.";
      description = "create slide as takahashi method.";
      buildType = "Simple";
    };
    components = {
      "takahashi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.free-operational)
          (hsPkgs.mtl)
          (hsPkgs.reasonable-lens)
        ];
      };
    };
  }