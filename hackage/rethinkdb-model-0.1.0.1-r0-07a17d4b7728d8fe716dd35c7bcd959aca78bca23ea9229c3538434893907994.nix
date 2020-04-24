{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rethinkdb-model"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Sean Hess <seanhess@gmail.com>";
      author = "Sean Hess";
      homepage = "http://github.com/atnnn/haskell-rethinkdb";
      url = "";
      synopsis = "Useful tools for modeling data with rethinkdb";
      description = "Useful tools for modeling data with rethinkdb";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."rethinkdb" or ((hsPkgs.pkgs-errors).buildDepError "rethinkdb"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          ];
        buildable = true;
        };
      };
    }