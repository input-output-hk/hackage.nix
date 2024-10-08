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
    flags = { shows = true; bytestring = true; doc = true; text = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "to-string-instances"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2009 Bas van Dijk <v.dijk.bas@gmail.com>";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Instances for the ToString class.";
      description = "This library provides the following instances\nfor the ToString class:\n\n* ShowS\n\n* ByteString\n\n* DString\n\n* Doc\n\n* Text\n\nNote that the instances can be enabled or disabled\nbased on cabal flags.\n\nThe idea is that eventually all packages providing string-like\ntypes will provide instances for ToString themselves.\nIn the mean time this package is here to provide them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."to-string-class" or (errorHandler.buildDepError "to-string-class"))
        ] ++ pkgs.lib.optional (flags.shows) (hsPkgs."base" or (errorHandler.buildDepError "base"))) ++ pkgs.lib.optional (flags.bytestring) (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))) ++ pkgs.lib.optional (flags.doc) (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))) ++ pkgs.lib.optional (flags.text) (hsPkgs."text" or (errorHandler.buildDepError "text"));
        buildable = true;
      };
    };
  }