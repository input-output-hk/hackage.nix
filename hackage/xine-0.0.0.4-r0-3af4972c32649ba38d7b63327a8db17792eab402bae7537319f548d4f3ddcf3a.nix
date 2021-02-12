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
      identifier = { name = "xine"; version = "0.0.0.4"; };
      license = "LicenseRef-LGPL";
      copyright = "Joachim Fasting 2011";
      maintainer = "Joachim Fasting <joachim.fasting@gmail.com>";
      author = "Joachim Fasting";
      homepage = "http://github.com/joachifm/hxine";
      url = "";
      synopsis = "Bindings to xine-lib";
      description = "A Haskell FFI binding to xine-lib, a multimedia playback engine.\n\nSee <http://xine-project.org> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        libs = [ (pkgs."xine" or (errorHandler.sysDepError "xine")) ];
        pkgconfig = [
          (pkgconfPkgs."libxine" or (errorHandler.pkgConfDepError "libxine"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      };
    }