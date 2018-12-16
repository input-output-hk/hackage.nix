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
        name = "semdoc";
        version = "0.1.3";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "iphydf@users.noreply.github.com";
      author = "iphydf";
      homepage = "https://toktok.github.io/semdoc";
      url = "";
      synopsis = "Evaluate code snippets in Literate Haskell.";
      description = "Evaluate code snippets in Literate Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Glob)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.data-default-instances-base)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.groom)
          (hsPkgs.mtl)
          (hsPkgs.pandoc)
          (hsPkgs.pandoc-types)
          (hsPkgs.regex-tdfa)
        ];
      };
      exes = {
        "semdoc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.semdoc)
          ];
        };
      };
    };
  }