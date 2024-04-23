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
      specVersion = "2.4";
      identifier = { name = "file-io"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Julian Ospald 2022";
      maintainer = "hasufell@posteo.de";
      author = "Julian Ospald";
      homepage = "";
      url = "";
      synopsis = "Basic file IO operations via 'OsPath'";
      description = "Basic file IO operations like Prelude, but for 'OsPath'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        buildable = true;
      };
    };
  }