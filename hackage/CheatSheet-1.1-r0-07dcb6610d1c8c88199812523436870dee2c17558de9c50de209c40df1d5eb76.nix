{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "CheatSheet";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jgbailey _ codeslower _ com";
      author = "Justin Bailey";
      homepage = "http://github.com/m4dc4p/cheatsheet";
      url = "";
      synopsis = "A Haskell cheat sheet in PDF and literate formats.";
      description = "This module includes a PDF giving a synopsis of Haskell syntax, keywords,\nand other essentials. It also has a literate source file which allows all\nexamples to be inspected.";
      buildType = "Simple";
    };
    components = {
      "CheatSheet" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
        ];
      };
      exes = {
        "cheatsheet" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }