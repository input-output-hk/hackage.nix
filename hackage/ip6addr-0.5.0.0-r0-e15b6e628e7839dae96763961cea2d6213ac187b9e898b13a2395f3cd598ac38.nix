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
      identifier = { name = "ip6addr"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2011-2015 - Michel Boucey";
      maintainer = "michel.boucey@gmail.com";
      author = "Michel Boucey";
      homepage = "https://github.com/MichelBoucey/ip6addr";
      url = "";
      synopsis = "Commandline tool to generate IPv6 address text representations";
      description = "Commandline tool to generate IPv6 address text representations";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ip6addr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."IPv6Addr" or (errorHandler.buildDepError "IPv6Addr"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }