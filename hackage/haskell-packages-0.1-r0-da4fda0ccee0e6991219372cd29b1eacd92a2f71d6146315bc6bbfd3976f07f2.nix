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
      specVersion = "1.10";
      identifier = {
        name = "haskell-packages";
        version = "0.1";
      };
      license = "MIT";
      copyright = "(c) Roman Cheplyaka 2012";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Roman Cheplyaka";
      homepage = "http://haskell-suite.github.io/haskell-packages/";
      url = "";
      synopsis = "Haskell suite library for package management and integration with Cabal";
      description = "See <http://haskell-suite.github.io/haskell-packages/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.optparse-applicative)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.hse-cpp)
          (hsPkgs.EitherT)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.tagged)
        ];
      };
    };
  }