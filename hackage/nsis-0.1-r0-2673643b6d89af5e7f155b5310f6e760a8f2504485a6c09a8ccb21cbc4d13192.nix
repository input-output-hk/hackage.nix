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
    flags = { testprog = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "nsis"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "Neil Mitchell 2012";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "http://community.haskell.org/~ndm/nsis/";
      url = "";
      synopsis = "Build NSIS Installers";
      description = "Helps writing NSIS Installers, see <http://nsis.sourceforge.net/>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
        ];
        buildable = true;
      };
      exes = {
        "nsis" = {
          depends = [
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = if flags.testprog then true else false;
        };
      };
    };
  }