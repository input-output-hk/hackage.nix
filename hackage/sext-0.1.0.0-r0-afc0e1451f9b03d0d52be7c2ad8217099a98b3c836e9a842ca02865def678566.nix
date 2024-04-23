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
    flags = { text = true; bytestring = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sext"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dima@dzhus.org";
      author = "Dmitry Dzhus";
      homepage = "http://github.com/dzhus/sext/";
      url = "";
      synopsis = "Lists, Texts and ByteStrings with type-encoded length";
      description = "Sext (/s/tatic t/ext/) provides type-level safety for\nbasic operations on string-like types (finite\nlists of elements). Use it when you need static\nguarantee on lengths of strings produced in your\ncode.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ] ++ pkgs.lib.optional (flags.bytestring) (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))) ++ pkgs.lib.optional (flags.text) (hsPkgs."text" or (errorHandler.buildDepError "text"));
        buildable = true;
      };
    };
  }