{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "git-config"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Fernando Freire";
      maintainer = "Fernando Freire <dogonthehorizon@gmail.com>";
      author = "Fernando Freire";
      homepage = "https://github.com/dogonthehorizon/git-config#readme";
      url = "";
      synopsis = "A simple parser for Git configuration files";
      description = "git-config is a simple 'megaparsec' parser for Git configuration files.\n\nIt aims to provide the simplest API possible for parsing Git configuration\nfiles so that you can get to whatever it was you were doing.\n\nA sample of this library in use:\n\n> import qualified Data.Text.IO as TIO\n> import Text.GitConfig.Parser (parseConfig)\n>\n> main :: IO ()\n> main = do\n>   file <- TIO.readFile \".git/config\"\n>   case parseConfig file of\n>     Right conf ->\n>       print conf";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "git-config-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."git-config" or ((hsPkgs.pkgs-errors).buildDepError "git-config"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
            (hsPkgs."smallcheck-series" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck-series"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-discover" or ((hsPkgs.pkgs-errors).buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-travis" or ((hsPkgs.pkgs-errors).buildDepError "tasty-travis"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }