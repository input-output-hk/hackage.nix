{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { threaded = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hyakko";
        version = "0.3.0";
      };
      license = "MIT";
      copyright = "(c) 2011 Jeremy Hull";
      maintainer = "Jeremy Hull <sourdrums@gmail.com>";
      author = "Jeremy Hull <sourdrums@gmail.com>";
      homepage = "http://sourrust.github.com/hyakko/";
      url = "";
      synopsis = "Literate-style Documentation Generator";
      description = "Hyakko is a Haskell port of Docco: the original quick-and-dirty,\nhundred-line-long, literate-programming-style documentation\ngenerator.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hyakko" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-pcre)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.pandoc)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }