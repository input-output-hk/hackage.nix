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
      specVersion = "1.8";
      identifier = {
        name = "haskell-formatter";
        version = "1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "(C) 2014–2015 Benjamin Fischer";
      maintainer = "Benjamin Fischer <benjamin.fischer@evolutics.info>";
      author = "Benjamin Fischer";
      homepage = "https://github.com/evolutics/haskell-formatter";
      url = "";
      synopsis = "Haskell source code formatter";
      description = "The Haskell Formatter formats Haskell source code. It is strict in that it\nfundamentally rearranges code.";
      buildType = "Simple";
    };
    components = {
      "haskell-formatter" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "haskell-formatter" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskell-formatter)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory-tree)
            (hsPkgs.doctest)
            (hsPkgs.filemanip)
            (hsPkgs.filepath)
            (hsPkgs.haskell-formatter)
            (hsPkgs.hlint)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }