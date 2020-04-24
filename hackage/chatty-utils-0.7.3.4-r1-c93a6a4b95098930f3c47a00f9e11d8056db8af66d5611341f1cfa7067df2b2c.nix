{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "chatty-utils"; version = "0.7.3.4"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "hackage@enumeration.eu";
      author = "Enum Cohrs";
      homepage = "http://hub.darcs.net/enum/chatty-utils";
      url = "";
      synopsis = "Some utilities every serious chatty-based application may need.";
      description = "Some utilities every serious chatty-based application may need. Includes a graph type, search trees, a None class, a counter and an atom store. Note that the author does not recommend usage in new projects any more. Please use packages that are better suited for your individual need.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }