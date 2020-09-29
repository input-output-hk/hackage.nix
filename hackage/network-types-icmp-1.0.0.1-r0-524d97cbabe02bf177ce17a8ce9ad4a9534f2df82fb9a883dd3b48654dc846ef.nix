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
      specVersion = "1.12";
      identifier = { name = "network-types-icmp"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Adam Flott";
      maintainer = "adam@adamflott.com";
      author = "Adam Flott";
      homepage = "https://github.com/adamflott/network-types-icmp#readme";
      url = "";
      synopsis = "Types for representing ICMP and ICMPv6 messages.";
      description = "Types for representing ICMP and ICMPv6 messages.\n\nIncludes conversion functions between strings and numeric codes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "network-types-icmp-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network-types-icmp" or (errorHandler.buildDepError "network-types-icmp"))
            ];
          buildable = true;
          };
        };
      };
    }