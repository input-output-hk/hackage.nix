{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "data-tensor"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2015";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "https://bitbucket.org/tdammers/data-tensor";
      url = "";
      synopsis = "Tensor and Group typeclasses";
      description = "Typeclasses for Groups (Monoids with an 'invert'\noperation) and Tensors.";
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