{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "stemmer"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008, 2009 Tupil";
      maintainer = "Ben Gamari <bgamari.foss@gmail.com>";
      author = "Tupil";
      homepage = "http://blog.tupil.com/tag/stemmer";
      url = "";
      synopsis = "Haskell bindings to the Snowball stemming library.";
      description = "Haskell bindings to the Snowball stemming library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }