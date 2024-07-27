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
    flags = { html = true; static = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "homplexity"; version = "0.4.8.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright by Michal J. Gajda and contributors '2015-'2020 https://gitlab.com/migamake/homplexity/-/graphs/master";
      maintainer = "mjgajda@migamake.com";
      author = "Michal J. Gajda";
      homepage = "https://gitlab.com/migamake/homplexity";
      url = "";
      synopsis = "Haskell code quality tool";
      description = "Homplexity aims to measure code complexity,\nwarning about fragments that might have higher defect probability\ndue to bad coding style on-the-large:\n\n* too large functions\n\n* too deeply nested conditions\n\n* too few comments";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."hflags" or (errorHandler.buildDepError "hflags"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
        ] ++ [
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
        ]) ++ pkgs.lib.optionals (flags.html) [
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
          (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
        ];
        buildable = true;
      };
      exes = {
        "homplexity-cli" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."githash" or (errorHandler.buildDepError "githash"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."hflags" or (errorHandler.buildDepError "hflags"))
            (hsPkgs."homplexity" or (errorHandler.buildDepError "homplexity"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          ] ++ pkgs.lib.optionals (flags.html) [
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
      tests = {
        "homplexity-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."homplexity" or (errorHandler.buildDepError "homplexity"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ] ++ [ (hsPkgs."hspec" or (errorHandler.buildDepError "hspec")) ];
          build-tools = pkgs.lib.optional (compiler.isGhc && compiler.version.ge "8.8.0") (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")));
          buildable = true;
        };
      };
    };
  }