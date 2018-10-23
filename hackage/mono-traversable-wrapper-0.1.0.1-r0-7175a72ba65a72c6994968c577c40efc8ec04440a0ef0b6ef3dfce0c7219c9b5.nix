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
        name = "mono-traversable-wrapper";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "2016 Donnacha Oisín Kidney";
      maintainer = "mail@doisinkidney.com";
      author = "Donnacha Oisín Kidney";
      homepage = "https://github.com/oisdk/mono-traversable-wrapper";
      url = "";
      synopsis = "Wrapper providing Foldable instance for MonoFoldables.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "mono-traversable-wrapper" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mono-traversable)
        ];
      };
    };
  }