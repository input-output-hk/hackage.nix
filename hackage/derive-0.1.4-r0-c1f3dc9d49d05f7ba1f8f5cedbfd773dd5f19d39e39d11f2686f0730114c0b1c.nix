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
      identifier = { name = "derive"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "2006-7, Neil Mitchell";
      maintainer = "ndmitchell@gmail.com";
      author = "Neil Mitchell & Stefan O'Rear";
      homepage = "http://www-users.cs.york.ac.uk/~ndm/derive/";
      url = "";
      synopsis = "A program and library to derive instances for data types";
      description = "Data.Derive is a library and a tool for deriving instances for Haskell programs.\nIt is designed to work with custom derivations, SYB and Template Haskell mechanisms.\nThe tool requires GHC, but the generated code is portable to all compilers.\nWe see this tool as a competitor to DrIFT.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "6.10") [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ]) ++ (if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."packedstring" or (errorHandler.buildDepError "packedstring"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      exes = { "derive" = { buildable = true; }; };
      };
    }