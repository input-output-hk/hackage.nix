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
      specVersion = "1.6";
      identifier = { name = "language-guess"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cra+code@cra.no";
      author = "Christian Rødli Amble";
      homepage = "";
      url = "";
      synopsis = "Guess at which human language a text is written in.";
      description = "Guess at which human language a text is written in,\nbased on the PEAR module Text_LanguageDetect.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.0.0") (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"));
        buildable = true;
      };
    };
  }