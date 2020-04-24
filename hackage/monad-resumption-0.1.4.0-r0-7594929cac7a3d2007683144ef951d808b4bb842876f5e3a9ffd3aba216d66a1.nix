{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "monad-resumption"; version = "0.1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Ian Graves";
      maintainer = "Ian Graves <thegravian@gmail.com>";
      author = "Ian Graves, Adam Procter";
      homepage = "https://github.com/igraves/monad-resumption#readme";
      url = "";
      synopsis = "Resumption and reactive resumption monads for Haskell.";
      description = "This package contains the definitions of Resumption and Reactive Resumption Monads.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mmorph" or ((hsPkgs.pkgs-errors).buildDepError "mmorph"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }