{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hasbolt-extras"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018, BIOCAD";
      maintainer = "neterebskii@gmail.com";
      author = "Bogdan Neterebskii, Vladimir Morozov, Sofya Kochkova, Alexander Sadovnikov";
      homepage = "https://github.com/biocad/hasbolt-extras#readme";
      url = "";
      synopsis = "Extras for hasbolt library";
      description = "Extras for hasbolt library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."hasbolt" or ((hsPkgs.pkgs-errors).buildDepError "hasbolt"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."neat-interpolation" or ((hsPkgs.pkgs-errors).buildDepError "neat-interpolation"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-lift-instances" or ((hsPkgs.pkgs-errors).buildDepError "th-lift-instances"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }