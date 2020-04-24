{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "netwire-input-glfw"; version = "0.0.6"; };
      license = "MIT";
      copyright = "Pavel Krajcevski, 2014-2016";
      maintainer = "Krajcevski@gmail.com";
      author = "Pavel Krajcevski";
      homepage = "https://www.github.com/Mokosha/netwire-input-glfw";
      url = "";
      synopsis = "GLFW instance of netwire-input";
      description = "This package contains the necessary glue to allow the use\nof wires from the netwire-input package. In general, the types\nassociated here should be used only sparingly to plumb the input\nstate through your netwire program. Otherwise, the state should\nnot be modified directly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."netwire-input" or ((hsPkgs.pkgs-errors).buildDepError "netwire-input"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "glfw-input-example" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."netwire" or ((hsPkgs.pkgs-errors).buildDepError "netwire"))
            (hsPkgs."netwire-input" or ((hsPkgs.pkgs-errors).buildDepError "netwire-input"))
            (hsPkgs."netwire-input-glfw" or ((hsPkgs.pkgs-errors).buildDepError "netwire-input-glfw"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }