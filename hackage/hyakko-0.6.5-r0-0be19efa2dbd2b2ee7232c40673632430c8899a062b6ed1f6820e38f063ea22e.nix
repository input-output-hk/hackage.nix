{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { threaded = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hyakko";
        version = "0.6.5";
      };
      license = "MIT";
      copyright = "(c) 2013 Jeremy Hull";
      maintainer = "Jeremy Hull <sourdrums@gmail.com>";
      author = "Jeremy Hull <sourdrums@gmail.com>";
      homepage = "http://sourrust.github.io/hyakko/";
      url = "";
      synopsis = "Literate-style Documentation Generator";
      description = "Hyakko is a Haskell port of Docco: the original\nquick-and-dirty, hundred-line-long,\nliterate-programming-style documentation generator.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hyakko" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.filepath)
            (hsPkgs.regex-pcre)
            (hsPkgs.unordered-containers)
            (hsPkgs.directory)
            (hsPkgs.pandoc)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.highlighting-kate)
            (hsPkgs.blaze-html)
            (hsPkgs.cmdargs)
            (hsPkgs.aeson)
          ];
        };
      };
    };
  }