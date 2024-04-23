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
      specVersion = "3.0";
      identifier = { name = "directory-ospath-streaming"; version = "0.1"; };
      license = "Apache-2.0";
      copyright = "(c) Sergey Vinokurov 2023";
      maintainer = "Sergey Vinokurov <serg.foo@gmail.com>";
      author = "Sergey Vinokurov";
      homepage = "https://github.com/sergv/directory-ospath-streaming";
      url = "";
      synopsis = "Stream directory entries in constant memory in vanilla IO";
      description = "Reading of directory contents in constant memory, i.e. in an iterative\nfashion without storing all directory elements in memory. From another\nperspective, this reading interface allows stopping at any point\nwithout loading every directory element.\n\nBoth Windows and Unix systems are supported.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ] ++ (if system.isWindows
          then [
            (hsPkgs."atomic-counter" or (errorHandler.buildDepError "atomic-counter"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
          ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."directory-ospath-streaming" or (errorHandler.buildDepError "directory-ospath-streaming"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = true;
        };
      };
    };
  }