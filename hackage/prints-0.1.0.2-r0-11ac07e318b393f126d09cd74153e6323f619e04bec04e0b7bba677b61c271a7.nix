{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "prints"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Evan Turner";
      maintainer = "ev <ev@evturn.com>";
      author = "Evan Turner";
      homepage = "https://github.com/evturn/prints";
      url = "https://github.com/evturn/prints.git";
      synopsis = "The Artist Formerly Known as Prints";
      description = "In 1993, in rebellion against Warner Bros., which refused\nto release Prince's enormous backlog of music at a steady\npace, he changed his name to an unpronounceable symbol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hscolour" or ((hsPkgs.pkgs-errors).buildDepError "hscolour"))
          (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
          (hsPkgs."pretty-simple" or ((hsPkgs.pkgs-errors).buildDepError "pretty-simple"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }