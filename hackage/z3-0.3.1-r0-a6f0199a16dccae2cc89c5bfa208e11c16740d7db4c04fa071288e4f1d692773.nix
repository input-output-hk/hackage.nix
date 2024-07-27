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
      specVersion = "1.6";
      identifier = { name = "z3"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "2012-2013, Iago Abal, David Castro";
      maintainer = "Iago Abal <iago.abal@gmail.com>,\nDavid Castro <david.castro.dcp@gmail.com>";
      author = "Iago Abal <iago.abal@gmail.com>,\nDavid Castro <david.castro.dcp@gmail.com>";
      homepage = "http://bitbucket.org/iago/z3-haskell";
      url = "";
      synopsis = "Bindings for the Z3 Theorem Prover";
      description = "Bindings for the Z3 Theorem Prover (<http://z3.codeplex.com>).\n\nLow-level bindings to the Z3 API are provided by \"Z3.Base\", this API is\nstill incomplete but pretty much stable.\n\nA simple but convenient wrapper for \"Z3.Base\" is provided by \"Z3.Monad\".\n\nThe \"Z3.Lang\" API provides a high-level interface to Z3, but it is still\nvery experimental and likely to change.\n\nImportant notes:\n\n* Installation (Unix-like): Just be sure to use the standard locations for\ndynamic libraries (\\/usr\\/lib) and header files (\\/usr\\/include), or else\nuse the --extra-lib-dirs and --extra-include-dirs Cabal flags.\n\n* Hackage fails to compile this package because of the (unsatisfied) /libz3/\ndependency.\n\n* Haddock documentation can be found at\n<http://www.iagoabal.eu/z3-haskell/doc/0.3.1>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        libs = if system.isOsx || system.isWindows
          then [ (pkgs."z3" or (errorHandler.sysDepError "z3")) ]
          else [
            (pkgs."gomp" or (errorHandler.sysDepError "gomp"))
            (pkgs."z3" or (errorHandler.sysDepError "z3"))
            (pkgs."gomp" or (errorHandler.sysDepError "gomp"))
          ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }