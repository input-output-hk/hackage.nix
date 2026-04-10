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
      identifier = { name = "gitrev-typed"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Bidne <tbidne@protonmail.com>";
      author = "Adam C. Foltzer, Thomas Bidne";
      homepage = "https://github.com/tbidne/gitrev-typed";
      url = "";
      synopsis = "Compile git revision info into Haskell projects";
      description = "This is a fork of the popular\n[gitrev](https://hackage.haskell.org/package/gitrev) package, offering\nTemplate Haskell splices for git revision information. There are three\ninterfaces:\n\n1. \"Development.GitRev\": The original @gitrev@ interface i.e. untyped splices.\n\n2. \"Development.GitRev.Typed\": Splices for typed TH, along with\nsupport for customization e.g. typed errors, \\\"out-of-tree\\\" workarounds\nvia environment variables, and custom git actions.\n\n3. \"Development.GitRev.Typed.OsString\": @Development.GitRev.Typed@ for\n@OsString@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."file-io" or (errorHandler.buildDepError "file-io"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."os-string" or (errorHandler.buildDepError "os-string"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."env-guard" or (errorHandler.buildDepError "env-guard"))
            (hsPkgs."gitrev-typed" or (errorHandler.buildDepError "gitrev-typed"))
            (hsPkgs."os-string" or (errorHandler.buildDepError "os-string"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }