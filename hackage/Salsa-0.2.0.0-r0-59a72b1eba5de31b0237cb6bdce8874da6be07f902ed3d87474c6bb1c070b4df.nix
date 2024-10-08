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
    flags = { use_mono = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Salsa"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2014 Andrew Appleyard, Tim Matthews";
      maintainer = "tim.matthews7@gmail.com";
      author = "Andrew Appleyard";
      homepage = "http://haskell.org/haskellwiki/Salsa";
      url = "";
      synopsis = "A .NET Bridge for Haskell";
      description = "Salsa is an experimental Haskell library and code generator that allows\nHaskell programs to host the .NET runtime and interact with .NET libraries.\nIt uses type families extensively to provide a type-safe mapping of the .NET\nobject model in the Haskell type system.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if !system.isWindows || flags.use_mono
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          ];
        libs = if !system.isWindows || flags.use_mono
          then [
            (pkgs."glib-2.0" or (errorHandler.sysDepError "glib-2.0"))
            (pkgs."mono-2.0" or (errorHandler.sysDepError "mono-2.0"))
          ]
          else [
            (pkgs."oleaut32" or (errorHandler.sysDepError "oleaut32"))
            (pkgs."ole32" or (errorHandler.sysDepError "ole32"))
          ];
        buildable = true;
      };
    };
  }