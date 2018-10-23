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
        name = "selections";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/selections#readme";
      url = "";
      synopsis = "Combinators for operating with selections over an underlying functor";
      description = "";
      buildType = "Simple";
    };
    components = {
      "selections" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.bifunctors)
        ];
      };
    };
  }