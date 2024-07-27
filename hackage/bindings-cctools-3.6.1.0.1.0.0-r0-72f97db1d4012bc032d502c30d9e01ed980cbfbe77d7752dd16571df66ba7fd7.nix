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
      specVersion = "1.8";
      identifier = { name = "bindings-cctools"; version = "3.6.1.0.1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "abdulwahidc@gmail.com";
      author = "Badi' Abdul-Wahid";
      homepage = "http://bitbucket.org/badi/bindings-cctools";
      url = "";
      synopsis = "Bindings to the CCTools WorkQueue C library";
      description = "Details can be found here: <http://www.nd.edu/~ccl/software/workqueue>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
        ] ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.4" && compiler.version.lt "7.5")) (hsPkgs."base" or (errorHandler.buildDepError "base"))) ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.6" && compiler.version.lt "7.7")) (hsPkgs."base" or (errorHandler.buildDepError "base"));
        libs = [ (pkgs."dttools" or (errorHandler.sysDepError "dttools")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }