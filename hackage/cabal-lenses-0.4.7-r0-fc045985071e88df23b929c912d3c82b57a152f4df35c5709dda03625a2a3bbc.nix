{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "cabal-lenses";
        version = "0.4.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel.trstenjak@gmail.com";
      author = "Daniel Trstenjak";
      homepage = "";
      url = "";
      synopsis = "Lenses and traversals for the Cabal library.";
      description = "Lenses and traversals (compatible with the <https://hackage.haskell.org/package/lens lens> library) for\nthe <https://hackage.haskell.org/package/Cabal Cabal> library.";
      buildType = "Simple";
    };
    components = {
      "cabal-lenses" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.unordered-containers)
          (hsPkgs.Cabal)
          (hsPkgs.either)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
          (hsPkgs.strict)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
    };
  }