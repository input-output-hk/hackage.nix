{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "simple-reflect"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "twanvl@gmail.com";
      author = "Twan van Laarhoven";
      homepage = "http://twanvl.nl/blog/haskell/simple-reflection-of-expressions";
      url = "";
      synopsis = "Simple reflection of expressions containing variables";
      description = "This package allows simple reflection of expressions containing variables.\nReflection here means that a Haskell expression is turned into a string.\nThe primary aim of this package is teaching and understanding;\nthere are no options for manipulating the reflected expressions beyond showing them.";
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