{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "assert-failure"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Mikolaj Konarski";
      homepage = "https://github.com/Mikolaj/assert-failure";
      url = "";
      synopsis = "Syntactic sugar improving 'assert' and 'error'";
      description = "This library contains syntactic sugar that makes it easier\nto write simple contracts with 'assert' and 'error'\nand report the values that violate contracts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.pretty-show) ];
        };
      };
    }