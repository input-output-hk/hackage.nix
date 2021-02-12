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
      identifier = { name = "socket-icmp"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Taylor Manderson";
      maintainer = "me@trm.io";
      author = "Taylor Manderson";
      homepage = "https://github.com/TRManderson/hs-socket-icmp#readme";
      url = "";
      synopsis = "Definitions for using ICMP with the `socket` library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      };
    }