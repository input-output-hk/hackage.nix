{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "clisparkline"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "siddu.druid@gmail.com";
      author = "Siddharth Bhat";
      homepage = "";
      url = "";
      synopsis = "Tiny library to pretty print sparklines onto the CLI";
      description = "Print sparklines into the CLI. Example usage:\n> import System.Console.Sparkline\n> main = putStrLn . series2spark \$ [0, 1, 2, 3, 2, 1]\noutput is:\n> _▂▅█▅▂";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "clisparkline-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }