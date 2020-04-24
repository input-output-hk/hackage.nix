{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "classy-miso"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Robert Fischer";
      maintainer = "smokejumperit+stack@gmail.com";
      author = "Robert Fischer";
      homepage = "https://github.com/RobertFischer/Classy-Miso#README.md";
      url = "";
      synopsis = "Typeclass based support for Miso, the Tasty Web Framework for Haskell.";
      description = "Please see the README on Github at <https://github.com/RobertFischer/Classy-Miso#README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
          (hsPkgs."rfc" or ((hsPkgs.pkgs-errors).buildDepError "rfc"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."url" or ((hsPkgs.pkgs-errors).buildDepError "url"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ] ++ (pkgs.lib).optionals (compiler.isGhcjs && true) [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          ];
        buildable = true;
        };
      exes = {
        "classy-miso-demo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."classy-miso" or ((hsPkgs.pkgs-errors).buildDepError "classy-miso"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            (hsPkgs."rfc" or ((hsPkgs.pkgs-errors).buildDepError "rfc"))
            ];
          buildable = true;
          };
        };
      tests = {
        "ghcjs-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."classy-miso" or ((hsPkgs.pkgs-errors).buildDepError "classy-miso"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            (hsPkgs."rfc" or ((hsPkgs.pkgs-errors).buildDepError "rfc"))
            ];
          buildable = true;
          };
        };
      };
    }