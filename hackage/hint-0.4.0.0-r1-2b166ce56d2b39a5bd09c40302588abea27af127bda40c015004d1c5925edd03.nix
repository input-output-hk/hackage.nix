{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "hint";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jcpetruzza@gmail.com";
      author = "Daniel Gorin";
      homepage = "http://hub.darcs.net/jcpetruzza/hint";
      url = "";
      synopsis = "Runtime Haskell interpreter (GHC API wrapper)";
      description = "This library defines an @Interpreter@ monad. It allows to load Haskell\nmodules, browse them, type-check and evaluate strings with Haskell\nexpressions and even coerce them into values. The library is\nthread-safe and type-safe (even the coercion of expressions to\nvalues).\nIt is, esentially, a huge subset of the GHC API wrapped in a simpler\nAPI.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.mtl)
          (hsPkgs.filepath)
          (hsPkgs.utf8-string)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.exceptions)
          (hsPkgs.exceptions)
        ] ++ (if compiler.isGhc && compiler.version.ge "6.8"
          then [
            (hsPkgs.random)
            (hsPkgs.directory)
          ] ++ (if compiler.isGhc && compiler.version.ge "6.10"
            then [
              (hsPkgs.base)
              (hsPkgs.base)
              (hsPkgs.ghc-mtl)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.base)
            ])
          else [
            (hsPkgs.utf8-string)
          ])) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hint)
            (hsPkgs.HUnit)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.exceptions)
            (hsPkgs.exceptions)
          ];
        };
      };
    };
  }