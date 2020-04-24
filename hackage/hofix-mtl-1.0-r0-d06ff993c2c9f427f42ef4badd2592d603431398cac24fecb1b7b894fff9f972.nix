{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hofix-mtl"; version = "1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "nicolas.frisby@gmail.com";
      author = "nicolas.frisby@gmail.com";
      homepage = "";
      url = "";
      synopsis = "defining @mtl@-ready monads as * -> * fixed-points";
      description = "Declares the * -> * isomorphism class and uses it to declare instances for the @mtl@ interface classes for monads defined using 'star-to-star:Data.StarToStar.Fix'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."star-to-star" or ((hsPkgs.pkgs-errors).buildDepError "star-to-star"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }