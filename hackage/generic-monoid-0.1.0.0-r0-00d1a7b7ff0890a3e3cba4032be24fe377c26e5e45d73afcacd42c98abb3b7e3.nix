{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "generic-monoid"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Luke Clifton";
      maintainer = "lukec@themk.net";
      author = "Luke Clifton";
      homepage = "";
      url = "";
      synopsis = "Derive monoid instances for product types.";
      description = "Using GHC's generics, allow for deriving `Monoid` and `Semigroup` instances for your product types.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }