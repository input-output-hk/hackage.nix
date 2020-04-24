{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "chatty-text"; version = "0.6.2.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "m@doomanddarkness.eu";
      author = "Marvin Cohrs";
      homepage = "http://doomanddarkness.eu/pub/chatty";
      url = "";
      synopsis = "Provides some classes and types for dealing with text, using the fundaments of Chatty.";
      description = "Provides some classes and types for dealing with text, using the fundaments of Chatty. Mainly two parser monads and a typesetter.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."chatty" or ((hsPkgs.pkgs-errors).buildDepError "chatty"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }