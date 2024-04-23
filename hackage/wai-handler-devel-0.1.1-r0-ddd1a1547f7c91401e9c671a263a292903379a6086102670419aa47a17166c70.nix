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
      identifier = { name = "wai-handler-devel"; version = "0.1.1"; };
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
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."sendfile" or (errorHandler.buildDepError "sendfile"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
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
      };
    };
  }