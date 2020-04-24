{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { demos = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "brick-skylighting"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Jonathan Daugherty 2018";
      maintainer = "cygnus@foobox.com";
      author = "Jonathan Daugherty";
      homepage = "https://github.com/jtdaugherty/brick-skylighting/";
      url = "";
      synopsis = "Show syntax-highlighted text in your Brick UI";
      description = "This package provides a module to use Skylighting to perform\nsyntax highlighting and display the results in Brick-based\ninterfaces.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."brick" or ((hsPkgs.pkgs-errors).buildDepError "brick"))
          (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
          (hsPkgs."skylighting-core" or ((hsPkgs.pkgs-errors).buildDepError "skylighting-core"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "brick-skylighting-demo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."brick" or ((hsPkgs.pkgs-errors).buildDepError "brick"))
            (hsPkgs."brick-skylighting" or ((hsPkgs.pkgs-errors).buildDepError "brick-skylighting"))
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            (hsPkgs."skylighting-core" or ((hsPkgs.pkgs-errors).buildDepError "skylighting-core"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if !flags.demos then false else true;
          };
        };
      };
    }