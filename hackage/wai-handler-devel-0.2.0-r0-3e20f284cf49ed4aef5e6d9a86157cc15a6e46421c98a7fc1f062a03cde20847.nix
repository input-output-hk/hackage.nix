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
      identifier = { name = "wai-handler-devel"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/wai-handler-devel";
      url = "";
      synopsis = "WAI server that automatically reloads code after modification.";
      description = "This handler automatically reloads your source code upon any changes. It works by using the hint package, essentially embedding GHC inside the handler. The handler (both the executable and library) takes three arguments: the port to listen on, the module name containing the application function, and the name of the function.\n\nOne major note: the type of the application is most likely not what you expect. A common case for WAI applications is having a withApplication function, and this library assumes this is the case. Therefore, the type signature of your application function must be:\n\n> withYourApp :: (Application -> IO ()) -> IO ()";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "wai-handler-devel" = {
          depends = [
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          ];
          buildable = true;
        };
        "wai-handler-devel-unwatched" = {
          depends = [
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          ];
          buildable = true;
        };
      };
    };
  }