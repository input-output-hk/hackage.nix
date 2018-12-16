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
        name = "Kleislify";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Dylan Just";
      maintainer = "Dylan Just";
      author = "Dylan Just <dylan@techtangents.com>";
      homepage = "";
      url = "";
      synopsis = "Variants of Control.Arrow functions, specialised to kleislis.";
      description = "Avoids boxing into Control.Arrow.Kleisli values.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }