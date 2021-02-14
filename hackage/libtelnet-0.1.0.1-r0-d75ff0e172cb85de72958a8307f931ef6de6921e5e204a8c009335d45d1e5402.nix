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
    flags = { example = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "libtelnet"; version = "0.1.0.1"; };
      license = "GPL-3.0-or-later";
      copyright = "(c) 2017-2021 Jack Kelly";
      maintainer = "jack@jackkelly.name";
      author = "Jack Kelly";
      homepage = "https://git.sr.ht/~jack/libtelnet-haskell";
      url = "";
      synopsis = "Bindings to libtelnet";
      description = "Binds https://github.com/seanmiddleditch/libtelnet , a C\nlibrary for writing telnet clients and\nservers. See @README.md@ or\n\"Network.Telnet.LibTelnet\" to get started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libtelnet" or (errorHandler.pkgConfDepError "libtelnet"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."libtelnet" or (errorHandler.buildDepError "libtelnet"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      };
    }