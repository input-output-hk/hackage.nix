{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hp2pretty"; version = "0.10"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2010,2011,2015,2017,2018,2021  Claude Heiland-Allen";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://mathr.co.uk/blog/hp2pretty.html";
      url = "";
      synopsis = "generate pretty graphs from heap profiles";
      description = "hp2pretty is a rewrite of hp2ps, implemented in Haskell, with\nthe aims of being maintainable, with more flexible output, and\nmore beautiful output.  Currently hp2pretty outputs Scalable\nVector Graphics (SVG) only, though PostScript (PS) is planned.\nNot all of hp2ps' options are implemented yet in hp2pretty.\n\nIn hp2pretty-0.10 parsing of very large files is made possible\nby reading the file(s) twice as Text.Lazy.\n\nIn hp2pretty-0.9 a mode for detached key is added:\n\n> hp2pretty --key=inline *.hp\n> hp2pretty --key=key.txt *.hp\n> hp2pretty --key=- *.hp\n\nThe output file is an simple text file, that mentions additional\nSVG files for the legend - how you format it is up to you.\n\nA mode for detached titles is also added:\n\n> hp2pretty --title=inline *.hp\n> hp2pretty --title=title.txt *.hp\n> hp2pretty --title=- *.hp\n\nThe output file is an simple text file, that mentions the image\nSVG files.  You could use this for figure captions, etc.\n\nSee the examples/ directory in the source distribution for hints.\n\nIn hp2pretty-0.8 output filtering and sorting flags are added,\nas well as low-ink pattern fills for printing:\n\n> hp2pretty --trace=1     *.hp\n> hp2pretty --bands=15    *.hp\n> hp2pretty --sort=size   *.hp\n> hp2pretty --sort=stddev *.hp\n> hp2pretty --sort=name   *.hp\n> hp2pretty --reverse     *.hp\n> hp2pretty --pattern     *.hp\n\nIn hp2pretty-0.7 a parsing bug is fixed.\n\nIn hp2pretty-0.6 ByteString is replaced by Text, fixing bugs\nwith Unicode.\n\nIn hp2pretty-0.5 using attoparsec and floatshow internally\nshould give a healthy speedup.\n\nIn hp2pretty-0.4 usage changed since the previous release:\n\n> hp2pretty *.hp\n> hp2pretty --uniform-scale=time   *.hp\n> hp2pretty --uniform-scale=memory *.hp\n> hp2pretty --uniform-scale=both   *.hp\n\nColours also changed: now they are based on a hash of the\ncost label, which should make colours have stable semantics\nacross program runs.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hp2pretty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."floatshow" or (errorHandler.buildDepError "floatshow"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }