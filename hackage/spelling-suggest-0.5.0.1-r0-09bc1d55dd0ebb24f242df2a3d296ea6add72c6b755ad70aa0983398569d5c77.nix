{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { debug = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "spelling-suggest";
        version = "0.5.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2010 Bart Massey and Greg Weber";
      maintainer = "bart@cs.pdx.edu, greg@gregweber.info";
      author = "Bart Massey and Greg Weber";
      homepage = "http://wiki.cs.pdx.edu/bartforge/thimk";
      url = "";
      synopsis = "Spelling suggestion tool with library and command-line interfaces.";
      description = "Given a possibly-misspelled word,\nthis tool spits out one or more properly-spelled words in order\nof likelihood of similarity.\n\nThis functionality is exported as a library via\nText.SpellingSuggest (suggest) and as\na command-line program \"thimk\" (an old joke)\n\nRunning the program \"thimk-makedb\" is an optional (but highly recommended)\nstep to speed up lookups,\npermitting reasonable performance on enormous dictionaries\nby creating a\nprecompiled SQlite database of phonetic\ncodes for a dictionary.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.edit-distance)
          (hsPkgs.phonetic-code)
          (hsPkgs.sqlite)
        ];
      };
      exes = {
        "thimk" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parseargs)
            (hsPkgs.edit-distance)
            (hsPkgs.phonetic-code)
            (hsPkgs.sqlite)
          ];
        };
        "thimk-makedb" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parseargs)
            (hsPkgs.phonetic-code)
            (hsPkgs.sqlite)
          ];
        };
      };
    };
  }