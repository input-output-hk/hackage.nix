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
      specVersion = "1.10";
      identifier = {
        name = "functor-infix";
        version = "0.0.5";
      };
      license = "MIT";
      copyright = "";
      maintainer = "vi@computational.law";
      author = "vi";
      homepage = "https://github.com/fmap/functor-infix";
      url = "";
      synopsis = "Infix operators for mapping over compositions of functors. Lots of them.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }