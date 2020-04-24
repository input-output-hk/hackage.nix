{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "DTC"; version = "1.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Diaz [dhelta `dot` diaz `at` gmail `dot` com]";
      author = "Daniel Diaz";
      homepage = "https://github.com/Daniel-Diaz/DTC";
      url = "";
      synopsis = "Data To Class transformation.";
      description = "Create a class definition from a data declaration.\n\nHow this package works is explained in /Data Declarations to Class Definitions/ (see <http://daniel-diaz.github.io/projects/dtc/dtc.pdf>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          ];
        buildable = true;
        };
      };
    }