{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "infinity"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "austin@youareinferior.net";
      author = "Austin Seipp";
      homepage = "";
      url = "";
      synopsis = "";
      description = "a tiny, pluggable irc bot";
      buildType = "Custom";
      };
    components = {
      exes = {
        "infinity" = {
          depends = [
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."plugins" or ((hsPkgs.pkgs-errors).buildDepError "plugins"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."irc" or ((hsPkgs.pkgs-errors).buildDepError "irc"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }