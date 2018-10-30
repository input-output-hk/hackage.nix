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
      specVersion = "1.6";
      identifier = {
        name = "total-map";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "";
      url = "";
      synopsis = "Finitely represented /total/ maps";
      description = "Finitely represented /total/ maps. Represented by as a partial map and a default value.\nHas Applicative and Monad instances (unlike Data.Map).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }