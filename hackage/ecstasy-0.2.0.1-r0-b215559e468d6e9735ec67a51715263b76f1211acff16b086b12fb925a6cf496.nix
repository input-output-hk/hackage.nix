{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ecstasy"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "http://github.com/isovector/ecstasy/";
      url = "";
      synopsis = "A GHC.Generics based entity component system.";
      description = "Ecstasy is an entity-component system for Haskell. It's inspired by\n<https://hackage.haskell.org/package/apecs apecs>, but makes the design\ndecision to focus on being idiomatic rather than being fast. Maybe. I haven't\nactually benchmarked it.\n\nWe achieve being idiomatic by using 'GHC.Generics' and tricky type families\nto derive performant data stores given only a record of the desired\ncomponents.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }