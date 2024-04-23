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
    flags = { binaries = false; stats = false; render = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "bff"; version = "0.3.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Janis Voigtlaender";
      author = "Janis Voigtlaender, Joachim Breitner";
      homepage = "";
      url = "";
      synopsis = "Bidirectionalization for Free! (POPL'09)";
      description = "This is an implementation of the ideas presented in \"Bidirectionalization\nfor Free!\" (paper at POPL'09) by Janis Voigtlaender.\n\nIt also includes an automatic deriver for the Zippable type class.\n\nUsing the cabal flag \"binaries\" will enable the creation of a web frontend\nto bff, in the form of a CGI program. Make sure you understand the\nsecurity implications before allowing untrusted access to the script.\n\nUsing the cabal flag \"stats\" will generate programs that collect performance\nstatistics about bff and print them as a table.\n\nUsing the cabal flag \"render\" will generate a program that renders collected\nperformance statistics as PDF files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."category-extras" or (errorHandler.buildDepError "category-extras"))
          (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
      exes = {
        "bff-shell" = {
          depends = pkgs.lib.optionals (flags.binaries) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          ];
          buildable = if flags.binaries then true else false;
        };
        "bff-cgi" = {
          depends = pkgs.lib.optionals (flags.binaries) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
          buildable = if flags.binaries then true else false;
        };
        "bff-stats" = {
          depends = pkgs.lib.optional (flags.stats) (hsPkgs."benchpress" or (errorHandler.buildDepError "benchpress"));
          buildable = if flags.stats then true else false;
        };
        "bff-stats-print" = {
          buildable = if flags.stats then true else false;
        };
        "bff-stats-render" = {
          depends = pkgs.lib.optionals (flags.render) [
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          ];
          buildable = if flags.render then true else false;
        };
      };
    };
  }