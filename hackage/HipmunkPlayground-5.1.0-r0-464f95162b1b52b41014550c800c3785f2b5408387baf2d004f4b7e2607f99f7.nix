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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "HipmunkPlayground"; version = "5.1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2008 Felipe A. Lessa";
      maintainer = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      author = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A playground for testing Hipmunk.";
      description = "This is a simple OpenGL program that allows you to see\nsome of Hipmunk's functions in action.\n\nNew in version 5.1.0:\n\n* Updated to Hipmunk 5.1.0.\n\nLicensed under the MIT license (like Hipmunk itself).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "HipmunkPlayground" = {
          depends = if flags.small_base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."Hipmunk" or (errorHandler.buildDepError "Hipmunk"))
              (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
              (hsPkgs."GLFW" or (errorHandler.buildDepError "GLFW"))
            ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."Hipmunk" or (errorHandler.buildDepError "Hipmunk"))
              (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
              (hsPkgs."GLFW" or (errorHandler.buildDepError "GLFW"))
            ];
          buildable = true;
        };
      };
    };
  }