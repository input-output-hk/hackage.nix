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
        name = "text-replace";
        version = "0.0.0.2";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/text-replace";
      url = "";
      synopsis = "Simple text replacements from a list of search/replace pairs";
      description = "A library and a command-line application for simple string\nreplacements in text files. The search for strings to replace is\nperformed left-to-right, preferring longer matches to shorter\nones.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "text-replace" = {
          depends = [
            (hsPkgs.text-replace)
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.text-replace)
            (hsPkgs.base)
            (hsPkgs.hedgehog)
            (hsPkgs.neat-interpolation)
            (hsPkgs.text)
          ];
        };
      };
    };
  }