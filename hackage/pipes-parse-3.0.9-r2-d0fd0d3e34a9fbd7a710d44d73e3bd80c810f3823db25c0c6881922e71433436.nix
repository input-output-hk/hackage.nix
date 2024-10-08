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
      specVersion = "1.10";
      identifier = { name = "pipes-parse"; version = "3.0.9"; };
      license = "BSD-3-Clause";
      copyright = "2013, 2014 Gabriella Gonzalez";
      maintainer = "GenuineGabriella@gmail.com";
      author = "Gabriella Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Parsing infrastructure for the pipes ecosystem";
      description = "@pipes-parse@ builds upon the @pipes@ library to provide shared\nparsing idioms and utilities:\n\n* /Leftovers/: Save unused input for later consumption\n\n* /Leftover propagation/: Leftovers are propagated backwards perfectly\n\n* /Connect and Resume/: Use @StateT@ to save unused input for later\n\n* /Termination Safety/: Detect and recover from end of input\n\n@Pipes.Parse@ contains the full documentation for this library.\n\nRead @Pipes.Parse.Tutorial@ for an extensive tutorial.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }