{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "haskell-formatter"; version = "2.0.0"; };
      license = "MIT";
      copyright = "(C) 2014–2019 Benjamin Fischer";
      maintainer = "Benjamin Fischer <benjamin.fischer@evolutics.info>";
      author = "Benjamin Fischer";
      homepage = "https://github.com/evolutics/haskell-formatter.git#readme";
      url = "";
      synopsis = "Haskell source code formatter";
      description = "The Haskell Formatter formats Haskell source code. It is strict in that it fundamentally rearranges code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
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
          depends = [
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
          depends = [
            (hsPkgs.QuickCheck)
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