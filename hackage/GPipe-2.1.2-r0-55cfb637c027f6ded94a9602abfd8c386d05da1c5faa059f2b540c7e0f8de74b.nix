{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "GPipe"; version = "2.1.2"; };
      license = "MIT";
      copyright = "Tobias Bexelius";
      maintainer = "Tobias Bexelius";
      author = "Tobias Bexelius";
      homepage = "http://tobbebex.blogspot.se/";
      url = "";
      synopsis = "Typesafe functional GPU graphics programming";
      description = "A typesafe API based on the conceptual model of OpenGl, but without the imperative state machine.\nAims to be as close to the raw OpenGl performance as possible, without compromising type safety or functional style.\nIncludes DSL for shaders to provide type safety even when crossing into that domain.\nUses OpenGl 3.3 core profile under the hood.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."exception-transformers" or ((hsPkgs.pkgs-errors).buildDepError "exception-transformers"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."Boolean" or ((hsPkgs.pkgs-errors).buildDepError "Boolean"))
          (hsPkgs."hashtables" or ((hsPkgs.pkgs-errors).buildDepError "hashtables"))
          (hsPkgs."gl" or ((hsPkgs.pkgs-errors).buildDepError "gl"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          ];
        buildable = true;
        };
      };
    }