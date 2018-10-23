{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ariadne";
        version = "0.1.2.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "roma@ro-che.info";
      author = "Roman Cheplyaka";
      homepage = "https://github.com/feuerbach/ariadne";
      url = "";
      synopsis = "Go-to-definition for Haskell";
      description = "See <https://github.com/feuerbach/ariadne#ariadne>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ariadne-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-names)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.haskell-packages)
            (hsPkgs.hse-cpp)
            (hsPkgs.mtl)
            (hsPkgs.bert)
            (hsPkgs.utf8-string)
            (hsPkgs.containers)
            (hsPkgs.Cabal)
            (hsPkgs.hslogger)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.tagged)
            (hsPkgs.data-lens)
            (hsPkgs.data-lens-fd)
            (hsPkgs.data-lens-template)
            (hsPkgs.stm)
            (hsPkgs.async)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.utf8-string)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.bert)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }