{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "heckle";
        version = "2.0.1.9";
      };
      license = "MIT";
      copyright = "";
      maintainer = "2016rshah@gmail.com";
      author = "Rushi Shah";
      homepage = "https://github.com/2016rshah/heckle";
      url = "";
      synopsis = "Jekyll in Haskell (feat. LaTeX)";
      description = "A static site generator that supports LaTeX-PDF and Markdown-HTML posts. Care has been taken to make it configurable, easy to use, and unopinionated.\nTo get started, check out <https://github.com/2016rshah/heckle>";
      buildType = "Simple";
    };
    components = {
      "heckle" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.blaze-html)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.split)
          (hsPkgs.tagsoup)
          (hsPkgs.pandoc)
          (hsPkgs.pandoc-types)
          (hsPkgs.time)
        ];
      };
      exes = {
        "heckle" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.heckle)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.split)
            (hsPkgs.optparse-applicative)
            (hsPkgs.optparse-generic)
          ];
        };
      };
    };
  }