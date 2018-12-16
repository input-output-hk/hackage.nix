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
        name = "index-core";
        version = "1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Indexed Types";
      description = "This library implements indexed types in the style of Conor McBride,\ndescribed in the functional pearl \\\"Kleisli arrows of outrageous fortune\\\",\nfollowing his presentation closely.\n\nThis provides a more general form of indexed monad than the one people are\nmost commonly familiar with.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }