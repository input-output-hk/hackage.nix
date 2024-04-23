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
      identifier = { name = "post-mess-age"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dhelta.diaz@gmail.com";
      author = "Daniel Díaz";
      homepage = "";
      url = "";
      synopsis = "Send messages to a Handle concurrently without getting them mixed.";
      description = "Do you have a program that output messages to the screen from different\nthreads and you are tired of getting them all messed up? Welcome to the\n/post-mess-age/. Using a simple /passer object/ you can make your logging\nmessages useful again. The methodology is explained in the API docs.\nYou can use post-mess-age not only for the 'stdout' handle, but with any\nhandle!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }