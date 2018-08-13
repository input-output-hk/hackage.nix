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
      specVersion = "1.9.2";
      identifier = {
        name = "hinter";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "The Hint Authors";
      homepage = "https://github.com/strake/hint.hs";
      url = "";
      synopsis = "Runtime Haskell interpreter (GHC API wrapper)";
      description = "This library defines an Interpreter monad. It allows to load Haskell\nmodules, browse them, type-check and evaluate strings with Haskell\nexpressions and even coerce them into values. The library is thread-safe\nand type-safe (even the coercion of expressions to values).\nIt is, essentially, a huge subset of the GHC API wrapped in a simpler\nAPI.";
      buildType = "Simple";
    };
    components = {
      "hinter" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.ghc-boot)
          (hsPkgs.mtl)
          (hsPkgs.filepath)
          (hsPkgs.exceptions)
          (hsPkgs.random)
          (hsPkgs.directory)
        ] ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "8.4" && compiler.version.lt "8.6")) (hsPkgs.temporary)) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hinter)
            (hsPkgs.HUnit)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.exceptions)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
      };
    };
  }