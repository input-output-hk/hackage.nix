{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yoda"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nicolas.wu@gmail.com";
      author = "Nicolas Wu";
      homepage = "https://github.com/zenzike/yoda";
      url = "";
      synopsis = "Parser combinators for young padawans";
      description = "Yoda is a small parser combinator library. It is not efficient, nor\nbeautiful, but it hopes to teach young padawans to use the source\nand learn to write a parser.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }