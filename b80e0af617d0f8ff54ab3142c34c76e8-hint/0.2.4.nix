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
      specVersion = "1.2";
      identifier = {
        name = "hint";
        version = "0.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jcpetruzza@gmail.com";
      author = "Daniel Gorin";
      homepage = "";
      url = "";
      synopsis = "Runtime Haskell interpreter (GHC API wrapper)";
      description = "This library defines an @Interpreter@ monad. It allows to load Haskell\nmodules, browse them, type-check and evaluate strings with Haskell\nexpressions and even coerce them into values. The library is\nthread-safe and type-safe (even the coercion of expressions to\nvalues).\nIt is, esentially, a huge subset of the GHC API wrapped in a simpler\nAPI. Works with GHC 6.6.x and 6.8.x.";
      buildType = "Simple";
    };
    components = {
      "hint" = {
        depends  = if compiler.isGhc && compiler.version.ge "6.8"
          then [
            (hsPkgs.base)
            (hsPkgs.haskell-src)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.utf8-string)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.haskell-src)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.utf8-string)
          ];
      };
    };
  }