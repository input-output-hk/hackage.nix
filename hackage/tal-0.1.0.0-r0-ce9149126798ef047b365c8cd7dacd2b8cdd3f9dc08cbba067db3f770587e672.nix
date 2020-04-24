{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tal"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2015 Stephanie Weirich";
      maintainer = "sweirich@cis.upenn.edu";
      author = "Stephanie Weirich";
      homepage = "https://github.com/sweirich/tal";
      url = "";
      synopsis = "An implementation of Typed Assembly Language (Morrisett, Walker, Crary, Glew)";
      description = "\"From System F to Typed-Assembly Language\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unbound" or ((hsPkgs.pkgs-errors).buildDepError "unbound"))
          ];
        buildable = true;
        };
      };
    }