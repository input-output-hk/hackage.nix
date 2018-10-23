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
        name = "one-liner-instances";
        version = "0.1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/one-liner-instances#readme";
      url = "";
      synopsis = "Generics-based implementations for common typeclasses";
      description = "Provides generics-based implementations for common typeclasses using\nGenerics.\n\nPlease see the README on Github at <https://github.com/mstksg/one-liner-instances#readme>";
      buildType = "Simple";
    };
    components = {
      "one-liner-instances" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.one-liner)
          (hsPkgs.random)
        ];
      };
    };
  }