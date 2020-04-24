{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { enable-doctests = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "config-ini"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "©2018 Getty Ritter";
      maintainer = "Getty Ritter <config-ini@infinitenegativeutility.com>";
      author = "Getty Ritter <config-ini@infinitenegativeutility.com>";
      homepage = "https://github.com/aisamanra/config-ini";
      url = "";
      synopsis = "A library for simple INI-based configuration files.";
      description = "The @config-ini@ library is a set of small monadic languages\nfor writing simple configuration languages with convenient,\nhuman-readable error messages.\n\n> parseConfig :: IniParser (Text, Int, Bool)\n> parseConfig = section \"NETWORK\" \$ do\n>   user <- field        \"user\"\n>   port <- fieldOf      \"port\" number\n>   enc  <- fieldFlagDef \"encryption\" True\n>   return (user, port, enc)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          ];
        buildable = true;
        };
      tests = {
        "test-ini-compat" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ini" or ((hsPkgs.pkgs-errors).buildDepError "ini"))
            (hsPkgs."config-ini" or ((hsPkgs.pkgs-errors).buildDepError "config-ini"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "test-prewritten" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."config-ini" or ((hsPkgs.pkgs-errors).buildDepError "config-ini"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        "test-doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            ];
          buildable = if compiler.isGhc && (compiler.version).lt "7.10" || !flags.enable-doctests
            then false
            else true;
          };
        };
      };
    }