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
    flags = { gtk3 = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "vcsgui"; version = "0.1.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "2011 Stephan Fortelny, Harald Jagenteufel";
      maintainer = "stephanfortelny at gmail.com, h.jagenteufel at gmail.com, hamish.k.mackenzie at gmail.com";
      author = "Stephan Fortelny, Harald Jagenteufel, Hamish Mackenzie";
      homepage = "https://github.com/forste/haskellVCSGUI";
      url = "";
      synopsis = "GUI library for source code management systems";
      description = "Provides library functions to expose some commonly needed scm tasks to the user.\nUses GTK+ and GTKBuilder to organize and display windows.\nUses vcswrapper to acces the scm functions.\nCurrently git, SVN and mercurial (hg) are supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vcswrapper" or (errorHandler.buildDepError "vcswrapper"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (if flags.gtk3
          then [ (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3")) ]
          else [ (hsPkgs."gtk" or (errorHandler.buildDepError "gtk")) ]);
        buildable = true;
        };
      exes = {
        "vcsgui" = {
          depends = [
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vcswrapper" or (errorHandler.buildDepError "vcswrapper"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ] ++ (if flags.gtk3
            then [ (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3")) ]
            else [ (hsPkgs."gtk" or (errorHandler.buildDepError "gtk")) ]);
          buildable = true;
          };
        "vcsgui-askpass" = {
          depends = [
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vcswrapper" or (errorHandler.buildDepError "vcswrapper"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ] ++ (if flags.gtk3
            then [ (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3")) ]
            else [ (hsPkgs."gtk" or (errorHandler.buildDepError "gtk")) ]);
          buildable = true;
          };
        };
      };
    }