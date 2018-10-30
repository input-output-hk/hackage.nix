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
      specVersion = "1.10";
      identifier = {
        name = "hzenity";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Emil Axelsson";
      maintainer = "78emil@gmail.com";
      author = "Emil Axelsson";
      homepage = "https://github.com/emilaxelsson/hzenity";
      url = "";
      synopsis = "Haskell interface to Zenity dialogs";
      description = "This is a Haskell wrapper around the\n<https://en.wikipedia.org/wiki/Zenity Zenity> dialog\nprogram.\n\nExamples can be found in the <https://github.com/emilaxelsson/hzenity/tree/master/examples examples/>\ndirectory.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.process)
          (hsPkgs.process-extras)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
    };
  }