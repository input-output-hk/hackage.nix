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
      specVersion = "0";
      identifier = {
        name = "reactive-haskell";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heather Cynede <heather@live.ru>";
      author = "Andy Gill, Heather Cynede";
      homepage = "";
      url = "";
      synopsis = "minimal fork of io-reactive";
      description = "API for generating reactive objects";
      buildType = "Simple";
    };
    components = {
      "reactive-haskell" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }