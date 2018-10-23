{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "CheatSheet";
        version = "2.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Justin Bailey <jgbailey@codeslower.com>";
      author = "Justin Bailey <jgbailey@codeslower.com>";
      homepage = "http://cheatsheet.codeslower.com";
      url = "";
      synopsis = "A Haskell cheat sheet in PDF and literate formats.";
      description = "This module includes a PDF giving a synopsis of Haskell syntax, keywords,\nand other essentials. It also has a literate source file which allows all\nexamples to be inspected. Download and unpack this archive to view them.";
      buildType = "Simple";
    };
    components = {
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