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
    flags = { warn-as-error = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "Win32-services-wrapper"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ganesh Sittampalam <ganesh@earth.li>";
      author = "Ganesh Sittampalam <ganesh@earth.li>";
      homepage = "";
      url = "";
      synopsis = "Wrapper code for making a Win32 service";
      description = "Builds on the Win32-services package, providing a simple\nwrapper for turning a long-running process into a\nWindows service.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Win32-services" or (errorHandler.buildDepError "Win32-services"))
          (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.ghc or (pkgs.buildPackages.ghc or (errorHandler.buildToolDepError "ghc")))
          ];
        buildable = true;
        };
      };
    }