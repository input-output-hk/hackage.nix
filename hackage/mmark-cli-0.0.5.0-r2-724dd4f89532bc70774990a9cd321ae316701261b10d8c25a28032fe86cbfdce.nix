{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "mmark-cli"; version = "0.0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov92@gmail.com>";
      author = "Mark Karpov <markkarpov92@gmail.com>";
      homepage = "https://github.com/mmark-md/mmark-cli";
      url = "";
      synopsis = "Command line interface to the MMark markdown processor";
      description = "Command line interface to the MMark markdown processor.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mmark" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."gitrev" or ((hsPkgs.pkgs-errors).buildDepError "gitrev"))
            (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."mmark" or ((hsPkgs.pkgs-errors).buildDepError "mmark"))
            (hsPkgs."mmark-ext" or ((hsPkgs.pkgs-errors).buildDepError "mmark-ext"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."stache" or ((hsPkgs.pkgs-errors).buildDepError "stache"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.4") (hsPkgs."ghc-syntax-highlighter" or ((hsPkgs.pkgs-errors).buildDepError "ghc-syntax-highlighter"));
          buildable = true;
          };
        };
      };
    }