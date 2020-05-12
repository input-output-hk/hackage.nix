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
      identifier = { name = "z3"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2012, Iago Abal, David Castro";
      maintainer = "Iago Abal <iago.abal@gmail.com>,\nDavid Castro <david.castro.dcp@gmail.com>";
      author = "Iago Abal <iago.abal@gmail.com>,\nDavid Castro <david.castro.dcp@gmail.com>";
      homepage = "http://bitbucket.org/iago/z3-haskell";
      url = "";
      synopsis = "Bindings for the Z3 Theorem Prover";
      description = "Bindings for the Z3 Theorem Prover.\n\nThis package is still a work in progress. Low and medium-level bindings\nto the Z3 API are provided (\"Z3.Base.C\" and \"Z3.Base\") in the spirit\nof yices-painless. These APIs are still incomplete but usable.\nThe high-level API (\"Z3.Monad\") is still very experimental.\n\nMore information about Z3:\n\n* <http://research.microsoft.com/en-us/um/redmond/projects/z3/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        libs = [
          (pkgs."gomp" or (errorHandler.sysDepError "gomp"))
          (pkgs."z3" or (errorHandler.sysDepError "z3"))
          (pkgs."gomp" or (errorHandler.sysDepError "gomp"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }