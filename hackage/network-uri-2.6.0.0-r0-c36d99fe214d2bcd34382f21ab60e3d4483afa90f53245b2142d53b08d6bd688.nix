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
      identifier = { name = "network-uri"; version = "2.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johan.tibell@gmail.com";
      author = "";
      homepage = "https://github.com/haskell/network-uri";
      url = "";
      synopsis = "URI manipulation";
      description = "This package provides an URI manipulation inteface.\n\nIn network-2.6 the @Network.URI@ module was split off from the\nnetwork package into this package. If you're using the @Network.URI@\nmodule you can automatically get it from the right package by adding\nthis to your .cabal file:\n\n> flag network-uri\n>   description: Get Network.URI from the network-uri package\n>   default: True\n>\n> library\n>   -- ...\n>   if flag(network-uri)\n>     build-depends: network-uri >= 2.6\n>   else\n>     build-depends: network < 2.6\n\nIf you want to use other modules from the network package while\nusing the @Network.URI@ modules from this package, add a @network >\n2.6@ clause to the first @build-depends@ line.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      tests = {
        "uri" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }