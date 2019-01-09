{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Kleislify"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Dylan Just";
      maintainer = "Dylan Just";
      author = "Dylan Just <dylan@techtangents.com>";
      homepage = "";
      url = "";
      synopsis = "Variants of Control.Arrow functions, specialised to kleislis.";
      description = "Precomposition and postcomposition of functors and monads.\nVariants of Control.Arrow functions, specialised to kleislis.\nAvoids boxing into Kleisli values.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }