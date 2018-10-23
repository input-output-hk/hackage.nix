{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "reflection-without-remorse";
        version = "0.9.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "atzeus@gmail.com";
      author = "Atze van der Ploeg";
      homepage = "https://github.com/atzeus/reflection-without-remorse";
      url = "";
      synopsis = "Efficient free and operational monads.";
      description = "Free and operational monads that efficiently support alternating between building and observing.";
      buildType = "Simple";
    };
    components = {
      "reflection-without-remorse" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.type-aligned)
        ];
      };
    };
  }