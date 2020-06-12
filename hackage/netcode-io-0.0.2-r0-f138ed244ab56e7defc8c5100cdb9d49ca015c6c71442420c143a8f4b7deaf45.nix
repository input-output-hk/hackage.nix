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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "netcode-io"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Pavel Krajcevski, 2020";
      maintainer = "krajcevski@gmail.com";
      author = "Pavel Krajcevski";
      homepage = "http://www.github.com/Mokosha/netcode-io";
      url = "";
      synopsis = "Bindings to the low-level netcode.io library.";
      description = "Bindings to the low-level netcode.io library, which come\nin two flavors: c-level bindings and a high-level\ninterface to the library.\nFor the low level interface, refer to the\nBindings.Netcode.IO module.\nFor the high-level interface, which is a bit closer to\nidiomatic Haskell, refer to the Netcode.IO module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          ];
        libs = [
          (pkgs."sodium" or (errorHandler.sysDepError "sodium"))
          ] ++ (pkgs.lib).optional (system.isWindows) (pkgs."ws2_32" or (errorHandler.sysDepError "ws2_32"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "netcode-io-c-unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."netcode-io" or (errorHandler.buildDepError "netcode-io"))
            ];
          buildable = if flags.examples then true else false;
          };
        "netcode-io-client" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."netcode-io" or (errorHandler.buildDepError "netcode-io"))
            ];
          buildable = if flags.examples then true else false;
          };
        "netcode-io-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."netcode-io" or (errorHandler.buildDepError "netcode-io"))
            ];
          buildable = if flags.examples then true else false;
          };
        "netcode-io-clientserver" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."netcode-io" or (errorHandler.buildDepError "netcode-io"))
            ];
          buildable = if flags.examples then true else false;
          };
        "netcode-io-soak" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."netcode-io" or (errorHandler.buildDepError "netcode-io"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }