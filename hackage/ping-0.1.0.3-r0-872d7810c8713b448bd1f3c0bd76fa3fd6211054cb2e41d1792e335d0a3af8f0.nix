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
    flags = { debug = false; application = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "ping"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/ping";
      url = "";
      synopsis = "icmp echo requests";
      description = "This library provides functions that have similar behavior as the\nunix command-line utility ping. In particular, both emit ICMP echo requests\nand wait for responses. This library uses a haskell implementation of ICMP\nrather than invoking `/bin/ping`. This avoids the costly process of starting\na child process. Additionally, there are greater opportunities for reusing\nsockets. The cost of this is that the user must ensure that one of these\nis true:\n\n* The kernel parameter `net.ipv4.ping_group_range` has been configured\nto allow pings to all IP addresses. (preferred solution)\n\n* The process is running with the the `CAP_NET_RAW` capability.\n\n* The process is running as root. (worst solution)\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
          (hsPkgs."posix-api" or (errorHandler.buildDepError "posix-api"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."primitive-addr" or (errorHandler.buildDepError "primitive-addr"))
          (hsPkgs."primitive-containers" or (errorHandler.buildDepError "primitive-containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "multiping" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."ping" or (errorHandler.buildDepError "ping"))
            (hsPkgs."primitive-containers" or (errorHandler.buildDepError "primitive-containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            ];
          buildable = if flags.application then true else false;
          };
        };
      };
    }