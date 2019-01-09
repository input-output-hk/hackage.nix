{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "HaTeX-meta"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Díaz (danieldiaz <at> dhelta <dot> net)";
      author = "Daniel Díaz";
      homepage = "http://dhelta.net/hprojects/HaTeX-meta";
      url = "";
      synopsis = "HaTeX monad modules builder.";
      description = "This packages belongs to the HaTeX project.\nIt builds the @.Monad@ modules.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "metahatex" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.haddock)
            (hsPkgs.ghc)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.Cabal)
            ];
          };
        };
      };
    }