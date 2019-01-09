{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "acme-functors"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Chris Martin";
      maintainer = "ch.martin@gmail.com";
      author = "Chris Martin";
      homepage = "https://github.com/chris-martin/acme-functors";
      url = "";
      synopsis = "The best applicative functors.";
      description = "Types are great. Lifting them into some sort of applicative functor makes them even better. This package is an homage to our favorite applicatives, and to the semigroups with which they are instrinsically connected.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }