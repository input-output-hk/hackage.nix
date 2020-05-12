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
    flags = { usebytestrings = true; separatesyb = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "language-objc"; version = "0.4.2.0"; };
      license = "BSD-3-Clause";
      copyright = "LICENSE";
      maintainer = "jwlato@gmail.com";
      author = "AUTHORS";
      homepage = "http://www.tiresiaspress.us/haskell/language-objc";
      url = "";
      synopsis = "Analysis and generation of Objcective C code";
      description = "Language-ObjC is a haskell library for the analysis and\ngeneration of Objective C code.\nIt features a complete, well tested parser and pretty printer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."newtype" or (errorHandler.buildDepError "newtype"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ] ++ (if flags.separatesyb
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ])) ++ (pkgs.lib).optional (flags.usebytestrings) (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"));
        build-tools = [
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy")))
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex")))
          ];
        buildable = true;
        };
      };
    }