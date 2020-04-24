{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bearriver"; version = "0.13.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez and Manuel Bärenz";
      homepage = "keera.co.uk";
      url = "";
      synopsis = "A replacement of Yampa based on Monadic Stream Functions.";
      description = "A Yampa replacement built using Dunai.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."dunai" or ((hsPkgs.pkgs-errors).buildDepError "dunai"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."simple-affine-space" or ((hsPkgs.pkgs-errors).buildDepError "simple-affine-space"))
          ];
        buildable = true;
        };
      };
    }