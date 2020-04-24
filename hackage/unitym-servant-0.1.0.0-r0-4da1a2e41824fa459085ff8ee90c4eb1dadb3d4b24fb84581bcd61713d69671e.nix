{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "unitym-servant"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Brian Hurt";
      maintainer = "bhurt42@gmail.com";
      author = "Brian Hurt";
      homepage = "https://github.com/bhurt/unitym#readme";
      url = "";
      synopsis = "Implementaation of unitym for Servant servers";
      description = "Implementaation of unitym for Servant servers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unitym" or ((hsPkgs.pkgs-errors).buildDepError "unitym"))
          ];
        buildable = true;
        };
      };
    }