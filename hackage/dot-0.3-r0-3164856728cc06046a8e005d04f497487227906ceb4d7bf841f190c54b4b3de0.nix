{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "dot"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "Andrew Martin <andrew.thaddeus@gmail.com>\nchessai <chessai1996@gmail.com>";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/dot";
      url = "";
      synopsis = "Datatypes and encoding for graphviz dot files";
      description = "Datatypes and encoding for graphviz dot files.\nSee the example directory for example usage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dot" or ((hsPkgs.pkgs-errors).buildDepError "dot"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      };
    }