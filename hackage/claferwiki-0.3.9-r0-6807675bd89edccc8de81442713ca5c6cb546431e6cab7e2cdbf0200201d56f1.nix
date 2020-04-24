{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "claferwiki"; version = "0.3.9"; };
      license = "MIT";
      copyright = "Michal Antkiewicz, Chris Walker, Luke Michael Brown";
      maintainer = "Michał Antkiewicz <mantkiew@gsd.uwaterloo.ca>";
      author = "Michał Antkiewicz, Chris Walker, Luke Michael Brown";
      homepage = "http://github.com/gsdlab/claferwiki";
      url = "";
      synopsis = "A wiki-based IDE for literate modeling with Clafer";
      description = "A wiki-based IDE for literate modeling with Clafer. A Plugin for the Gitit wiki which collects code blocks written in Clafer (.clafer), compiles them, renders into HTML and Dot, and replaces the code blocks with the results.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."SHA" or ((hsPkgs.pkgs-errors).buildDepError "SHA"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."gitit" or ((hsPkgs.pkgs-errors).buildDepError "gitit"))
          (hsPkgs."clafer" or ((hsPkgs.pkgs-errors).buildDepError "clafer"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.ghc or (pkgs.buildPackages.ghc or ((hsPkgs.pkgs-errors).buildToolDepError "ghc")))
          ];
        buildable = true;
        };
      };
    }