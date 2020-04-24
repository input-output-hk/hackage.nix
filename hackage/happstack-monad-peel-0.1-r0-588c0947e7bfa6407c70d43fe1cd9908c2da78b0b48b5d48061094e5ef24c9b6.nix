{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "happstack-monad-peel"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mail@nils.cc";
      author = "Nils Schweinsberg <mail@nils.cc>";
      homepage = "";
      url = "";
      synopsis = "monad-peel instances for Happstack types";
      description = "monad-peel instances for Happstack types";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."monad-peel" or ((hsPkgs.pkgs-errors).buildDepError "monad-peel"))
          (hsPkgs."happstack-server" or ((hsPkgs.pkgs-errors).buildDepError "happstack-server"))
          ];
        buildable = true;
        };
      };
    }