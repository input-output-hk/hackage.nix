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
      specVersion = "1.2";
      identifier = { name = "language-asn1"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "LICENSE";
      maintainer = "Dmitry Astapov <dastapov@gmail.com>";
      author = "Dmitry Astapov <dastapov@gmail.com>";
      homepage = "http://adept.linux.kiev.ua/repos/asn1";
      url = "";
      synopsis = "Parsing of ASN1 definitions";
      description = "Language C is a haskell library for the analysis and generation of C code.\nIt features a complete, well tested parser and pretty printer for all of C99 and a large\nset of GNU extensions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }