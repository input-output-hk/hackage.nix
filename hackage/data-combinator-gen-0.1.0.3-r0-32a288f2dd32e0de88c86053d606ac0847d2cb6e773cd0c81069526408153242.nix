{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "data-combinator-gen"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "armandoifsantos@gmail.com";
      author = "Armando Santos";
      homepage = "https://github.com/bolt12/data-combinator-gen";
      url = "";
      synopsis = "Generate a special combinator from any data type.";
      description = "This library provides a function to generate a special combinator from any data type (GADTs are not currently supported).\nThis was inspired by the recursion-schemes library where they have a function to automagically generate a base functor. Although, this new base functor data type has custom constructors and to define the *-morphism algebras turns into boring pattern matching.\nSo, this library provides a function called `makeCombinator` that produces a\nnice combinator to deal with data types as they were defined in terms of Pairs\n( (,) ) and Sums (`Either`). With this nice combinator we are able to view a\ndata type as its equivalent categorical isomorphism and manipulate it with an\ninterface similar as the `either` function provided from `base`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }