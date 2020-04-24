{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "elm-init"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "development@justusadam.com";
      author = "justusadam";
      homepage = "";
      url = "";
      synopsis = "Set up basic structure for an elm project";
      description = "Initialize a new empty elm project with some basic scaffolding according to 'https://github.com/evancz/elm-architecture-tutorial'.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "elm-init" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."system-fileio" or ((hsPkgs.pkgs-errors).buildDepError "system-fileio"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            ];
          buildable = true;
          };
        };
      };
    }