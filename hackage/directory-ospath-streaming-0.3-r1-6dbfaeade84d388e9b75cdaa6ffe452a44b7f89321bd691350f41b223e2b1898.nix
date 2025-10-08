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
    flags = { os-string = true; };
    package = {
      specVersion = "3.0";
      identifier = { name = "directory-ospath-streaming"; version = "0.3"; };
      license = "Apache-2.0";
      copyright = "(c) Sergey Vinokurov 2023";
      maintainer = "Sergey Vinokurov <serg.foo@gmail.com>";
      author = "Sergey Vinokurov";
      homepage = "https://github.com/sergv/directory-ospath-streaming";
      url = "";
      synopsis = "Stream directory entries in constant memory in vanilla IO";
      description = "Reading of directory contents in constant memory, i.e. in an iterative\nfashion without storing all directory elements in memory. From another\nperspective, this reading interface allows stopping at any point\nwithout loading every directory element.\n\nAlso defines general-purpose recursive directory traversals.\n\nBoth Windows and Unix systems are supported.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."atomic-counter" or (errorHandler.buildDepError "atomic-counter"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ] ++ (if flags.os-string
          then [
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."os-string" or (errorHandler.buildDepError "os-string"))
          ]
          else [
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ])) ++ (if system.isWindows
          then [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
          ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        buildable = true;
      };
      tests = {
        "test" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory-ospath-streaming" or (errorHandler.buildDepError "directory-ospath-streaming"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ] ++ (if flags.os-string
            then [
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."os-string" or (errorHandler.buildDepError "os-string"))
            ]
            else [
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ])) ++ pkgs.lib.optionals (!system.isWindows) [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }