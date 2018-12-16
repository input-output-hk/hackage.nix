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
        name = "pronounce";
        version = "1.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ngoodman@uchicago.edu";
      author = "Noah Goodman";
      homepage = "https://github.com/buonuomo/Text.Pronounce";
      url = "";
      synopsis = "A Haskell library for interfacing with the CMU Pronouncing Dictionary";
      description = "Text.Pronounce is a Haskell library for interfacing and\nCMU Pronouncing Dictionary. It is based off of Allison\nParrish's python library called 'pronouncing', and it\nexports much of the same functionality. The underlying data\nstructure that I used for representing the dictionary was a\nMap from entries to lists of their possible phones as\nrepresented in the CMU dict. Many functions rely on access\nto the CMU dict, so I decided to encompass this underlying\nstate of the dictionary by using the Reader Monad. When\nworking with this library, the default setting is to load\nthe dictionary from an included binary file, but the user\nhas the option to parse the dictionary from a unicode text\nfile, or encode the text file into binary themselves.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.binary)
        ];
      };
    };
  }