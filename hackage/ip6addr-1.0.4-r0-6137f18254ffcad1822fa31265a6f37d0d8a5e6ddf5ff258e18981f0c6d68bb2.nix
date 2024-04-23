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
      identifier = { name = "ip6addr"; version = "1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2024 - Michel Boucey";
      maintainer = "michel.boucey@gmail.com";
      author = "Michel Boucey";
      homepage = "https://github.com/MichelBoucey/ip6addr";
      url = "";
      synopsis = "Commandline tool to deal with IPv6 address text representations";
      description = "Commandline tool to validate, canonize and generate IPv6 address text representations";
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