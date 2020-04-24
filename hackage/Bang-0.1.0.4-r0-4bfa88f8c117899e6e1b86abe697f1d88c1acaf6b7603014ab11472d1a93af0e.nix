{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Bang"; version = "0.1.0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "bkovach13@gmail.com";
      author = "Benjamin Kovach";
      homepage = "https://github.com/5outh/Bang/";
      url = "";
      synopsis = "A Drum Machine DSL for Haskell";
      description = "This library consists of a DSL for piecing together drum compositions. It uses a MIDI backend\nand is only currently available for use on Mac OSX. Much of the library was inspired by previous work done by Yale's\n@<http://haskell.cs.yale.edu/euterpea/ Euterpea>@ project and Paul Hudak\\'s @<http://cpsc.yale.edu/sites/default/files/files/tr1259.pdf paper>@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }