{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "restricted-workers"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013";
      maintainer = "difrumin@gmail.com";
      author = "Dan Frumin";
      homepage = "https://github.com/co-dan/interactive-diagrams/wiki/Restricted-Workers";
      url = "";
      synopsis = "Running worker processes under system resource restrictions";
      description = "This library provides an abstract interface for\nrunning various kinds of workers under resource\nrestrictions. It was originally developed as part\nof the interactive-diagrams\n(<http://github.com/co-dan/interactive-diagrams>)\nproject. To read more about the idia behind the\nlibrary check out my GSoC report:\n<http://parenz.wordpress.com/2013/07/15/interactive-diagrams-gsoc-progress-report/>.\n\nThe library provides a convenient way of running worker processes,\nsaving data obtained by the workers at start-up, a simple pool\nabstraction and a configurable security and resource limitations.\nPlease consult\n<https://github.com/co-dan/interactive-diagrams/tree/master/restricted-workers/README.md>\nand\n<https://github.com/co-dan/interactive-diagrams/wiki/Restricted-Workers>\nfor more details.\n\n/Warning/: this library requires SELinux to\nfunction";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."selinux" or ((hsPkgs.pkgs-errors).buildDepError "selinux"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }