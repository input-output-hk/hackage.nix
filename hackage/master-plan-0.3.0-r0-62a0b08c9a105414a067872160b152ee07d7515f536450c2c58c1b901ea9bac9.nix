{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "master-plan"; version = "0.3.0"; };
      license = "MIT";
      copyright = "2017 Rodrigo Setti. All rights reserved";
      maintainer = "rodrigosetti@gmail.com";
      author = "Rodrigo Setti";
      homepage = "https://github.com/rodrigosetti/master-plan";
      url = "";
      synopsis = "The project management tool for hackers";
      description = "Master Plan is a tool that parses files that describes\nprojects using a simple and powerful syntax in which\nproject structures are encoded using a special algebra\nwith combinators for specifying the different kinds\nof dependencies. It also supports estimations of cost and\nrisk, as well as some metadata. The tool is then able\nto compute the priority of execution that minimizes costs,\nand also output a nice visual representation of the structure.\nBecase the plan description is plan text, it's portable\nand fits well within source control.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.diagrams)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-rasterific)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.syb)
          ];
        };
      exes = {
        "master-plan" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.master-plan)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.master-plan)
            (hsPkgs.mtl)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.random)
            (hsPkgs.random-shuffle)
            (hsPkgs.text)
            ];
          };
        };
      };
    }