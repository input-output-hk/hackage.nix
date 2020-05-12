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
      identifier = { name = "SimpleAES"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009 University of Tromsø,\n2009 David Himmelstrup";
      maintainer = "David Himmelstrup <lemmih@gmail.com>";
      author = "Svein Ove Aas <svein.ove@aas.no>,\nDavid Himmelstrup <lemmih@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Fast AES encryption/decryption for bytestrings";
      description = "A simplified binding to Brian Gladman's AES implementation,\nincluding a copy of that implementation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
        buildable = true;
        };
      };
    }