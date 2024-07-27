{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cudd"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2016 Adam Walker";
      maintainer = "adamwalker10@gmail.com";
      author = "Adam Walker";
      homepage = "https://github.com/adamwalker/haskell_cudd";
      url = "";
      synopsis = "Bindings to the CUDD binary decision diagrams library";
      description = "Bindings to version 3.0.0 of the CUDD binary decision diagrams library.\n\n<http://vlsi.colorado.edu/~fabio/CUDD/>\n\n/Installation/\n\nEither install CUDD 3.0.0 using your system's package manager or download and install CUDD from here: <http://vlsi.colorado.edu/~fabio/>.\n\nThen:\n\n\"cabal install cudd\"\n\nDepending on where CUDD is installed on your system, you may need to provide --extra-lib-dirs or --extra-include-dirs:\n\n\"cabal install cudd --extra-lib-dirs=\\/usr\\/local\\/lib\"\n\n/Usage/\n\nThis package provides two interfaces to the CUDD library:\n\n* A purely functional one in \"Cudd.Cudd\" that automatically dereferences BDDs during garbage collection.\n\n* An ST Monad based one in \"Cudd.Imperative\" that gives you precise control over the ordering of BDD operations and when BDDs are dereferenced. Use this one if you want your code to perform well.\n\nAlso, for a higher level interface in the style of the <https://hackage.haskell.org/package/ersatz ersatz> SAT encoder, see <https://github.com/jwaldmann/cudd-ersatz/>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        libs = [
          (pkgs."cudd" or (errorHandler.sysDepError "cudd"))
          (pkgs."m" or (errorHandler.sysDepError "m"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }