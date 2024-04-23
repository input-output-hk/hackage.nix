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
    flags = { gmp = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "floatshow"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Daniel Fischer";
      maintainer = "daniel.is.fischer@googlemail.com";
      author = "Daniel Fischer";
      homepage = "https://bitbucket.org/dafis/floatshow";
      url = "";
      synopsis = "Alternative faster String representations for Double and Float,\nString representations for more general numeric types.";
      description = "The String representations provided by this package\nare generally longer than show's output, which constructs\nthe shortest string that is parsed as the original\nnumber by read. This requires some time-consuming checks,\nso show is slow for floating-point numbers. By producing\na digit-string guaranteed to be long enough to uniquely\ndetermine the number without caring whether there's a\nshorter representation, the display functions of this\npackage can be faster, sometimes by a big margin.\nText.FShow.Raw provides building blocks for representations\nof numeric types which don't belong to RealFloat but have\nsome of its functionality.\nThe bulk of the code is a minor modification of code from\nthe base package, whence the GHC License is included as\nan extra-source-file.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ] ++ (if flags.gmp
          then [
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          ]
          else [
            (hsPkgs."integer-simple" or (errorHandler.buildDepError "integer-simple"))
          ]);
        buildable = true;
      };
    };
  }