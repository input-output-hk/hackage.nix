{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "netwire-input"; version = "0.0.7"; };
      license = "MIT";
      copyright = "Pavel Krajcevski, 2015";
      maintainer = "Krajcevski@gmail.com";
      author = "Pavel Krajcevski";
      homepage = "https://www.github.com/Mokosha/netwire-input";
      url = "";
      synopsis = "Input handling abstractions for netwire";
      description = "This package contains a collection of Monad typeclasses that\nsupport interaction with input devices such as keyboard and\nmice. Moreover, these typeclasses are used to create wires from\nthe netwire package the produce mouse and keyboard input values\nin a reactive way. This package cannot be used independently\nand must be used with another package that provides instantiation\nof these typeclasses such as netwire-input-glfw.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."netwire" or ((hsPkgs.pkgs-errors).buildDepError "netwire"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      };
    }