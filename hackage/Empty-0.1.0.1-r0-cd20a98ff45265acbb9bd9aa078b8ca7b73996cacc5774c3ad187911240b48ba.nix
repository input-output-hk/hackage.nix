{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Empty";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fresheyeball@gmail.com";
      author = "Isaac Shapira";
      homepage = "";
      url = "";
      synopsis = "A type class for empty containers";
      description = "HasEmpty f has a member empty of type forall a. f a";
      buildType = "Simple";
    };
    components = {
      "Empty" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }