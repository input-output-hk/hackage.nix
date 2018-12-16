{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.1";
      identifier = {
        name = "EEConfig";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Bartosz Wójcik";
      maintainer = "Bartosz Wojcik <bartek@sudety.it>";
      author = "Bartosz Wojcik <bartek@sudety.it>";
      homepage = "";
      url = "";
      synopsis = "ExtremlyEasyConfig - Extremly Simple parser for config files";
      description = "Implementation of a very simple parser for parameters recognition.\nIt recognizes given parameters and their values.\nAs input it becomes list of parameters and all their possible values in format [ParameterInput]\nand input String where parameters will be searched for.\nAs output it deliveres recognized parameters and their values in format [ParameterOutput],\nwhere only these parameters are present which have been found in the input string.\nIn output list each exisitng parameter has exactly one value - this one that has\nbeen recognized in the input string.\nParameters in the input string have to be always given in following format:\n(\\<flagname> \\<parameter>)*.\nAnything what is not recognized as parameter or value is ignored.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }