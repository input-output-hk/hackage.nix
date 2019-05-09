{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "shower"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Monadfix <hi@monadfix.io>";
      author = "Vladislav Zavialov";
      homepage = "https://monadfix.io/shower";
      url = "";
      synopsis = "Clean up the formatting of 'show' output";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.megaparsec) (hsPkgs.pretty) ];
        };
      exes = { "shower" = { depends = [ (hsPkgs.base) (hsPkgs.shower) ]; }; };
      tests = {
        "shower-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.utf8-string)
            (hsPkgs.shower)
            ];
          };
        };
      };
    }