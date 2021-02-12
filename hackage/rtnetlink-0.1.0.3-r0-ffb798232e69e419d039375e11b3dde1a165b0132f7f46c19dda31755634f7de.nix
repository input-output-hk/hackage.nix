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
      identifier = { name = "rtnetlink"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Formaltech Inc.";
      maintainer = "Ben Hamlin <protob3n@gmail.com>";
      author = "Ben Hamlin";
      homepage = "https://gitlab.com/formaltech/rtnetlink-hs";
      url = "";
      synopsis = "Manipulate network devices, addresses, and routes on Linux";
      description = "A high-level, extensible, pure Haskell interface to the\nROUTE_NETLINK subsystem of netlink for manipulating\nnetwork devices on Linux.\nRTNetlink provides the RTNL monad to simplify sending\nand receiving messages, pre-built types for manipulating\ndevices and addresses, and typeclasses for creating your\nown messages, based on linux\\/netlink.h,\nlinux\\/rtnetlink.h, et al.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."pretty-hex" or (errorHandler.buildDepError "pretty-hex"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "rtnl-link" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."rtnetlink" or (errorHandler.buildDepError "rtnetlink"))
            ];
          buildable = if flags.examples then true else false;
          };
        "rtnl-address" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."rtnetlink" or (errorHandler.buildDepError "rtnetlink"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "rtnetlink-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."rtnetlink" or (errorHandler.buildDepError "rtnetlink"))
            ];
          buildable = true;
          };
        };
      };
    }