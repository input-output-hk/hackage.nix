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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "language-asn1"; version = "0.2.1"; };
      license = "LicenseRef-GPL";
      copyright = "LICENSE";
      maintainer = "Dmitry Astapov <dastapov@gmail.com>";
      author = "Dmitry Astapov <dastapov@gmail.com>";
      homepage = "http://patch-tag.com/r/adept/language-asn1";
      url = "";
      synopsis = "Parsing of ASN1 definitions";
      description = "Language.ASN1 is a haskell library for the analysis of ASN.1 code.\nIt features an almost-complete, somewhat tested parser for large subset of\nASN.1:1997 standard";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs."base" or (errorHandler.buildDepError "base"));
        buildable = true;
      };
    };
  }