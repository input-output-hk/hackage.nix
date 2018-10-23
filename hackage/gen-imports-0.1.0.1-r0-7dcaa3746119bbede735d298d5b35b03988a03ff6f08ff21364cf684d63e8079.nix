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
        name = "gen-imports";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Clinton Mead";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "https://github.com/clintonmead/gen-imports#readme";
      url = "";
      synopsis = "Code to generate instances for the package \"ghc-instances\"";
      description = "Functions in this package look at the hackage database to get all the public modules of packages.\nIt then creates Haskell files containing each module as an import statement.\nIt's primary purpose is to produce files for the package\n[ghc-instances](https://hackage.haskell.org/package/ghc-instances).\nSee that package for the motivation behind this.";
      buildType = "Simple";
    };
    components = {
      "gen-imports" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hackage-db)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
        ];
      };
    };
  }