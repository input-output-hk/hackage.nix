{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = {
        name = "constrained-platform-instances";
        version = "0.1";
        };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "Sergey Vinokurov <serg.foo@gmail.com>";
      author = "Sergey Vinokurov";
      homepage = "";
      url = "";
      synopsis = "Instances of standard platform types for 'constrained' package.";
      description = "Instances for 'IntMap', 'Map', 'Set', 'Vector', etc of genealizations of\nstandard 'Functor', 'Foldable', and 'Traversable' classes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."constrained" or ((hsPkgs.pkgs-errors).buildDepError "constrained"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }