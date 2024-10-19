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
    flags = { splitbase = true; usebytestrings = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "language-c"; version = "0.3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "LICENSE";
      maintainer = "benedikt.huber@gmail.com";
      author = "AUTHORS";
      homepage = "http://www.sivity.net/projects/language.c/";
      url = "";
      synopsis = "Analysis and generation of C code";
      description = "Language C is a haskell library for the analysis and generation of C code.\nIt features a complete, well tested parser and pretty printer for all of C99 and a large\nset of GNU extensions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ])) ++ pkgs.lib.optional (flags.usebytestrings) (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
          (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
        ];
        buildable = true;
      };
    };
  }