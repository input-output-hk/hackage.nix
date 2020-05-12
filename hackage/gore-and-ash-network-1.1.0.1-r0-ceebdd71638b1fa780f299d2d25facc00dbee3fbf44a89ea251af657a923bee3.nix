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
      identifier = { name = "gore-and-ash-network"; version = "1.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2015-2016 Anton Gushcha,\n2013-2015 John Ericson,\n2002-2013 Lee Salzman,\n2013 Sergei Lebedev <superbobry@gmail.com>,\n2013 Aleksey Kladov <aleksey.kladov@gmail.com>,\n2013 Fedor Gogolev <knsd@knsd.net>";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha\nJohn Ericson\nLee Salzman";
      homepage = "https://github.com/Teaspot-Studio/gore-and-ash-network";
      url = "";
      synopsis = "Core module for Gore&Ash engine with low level network API";
      description = "Please see README.md";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."gore-and-ash" or (errorHandler.buildDepError "gore-and-ash"))
          (hsPkgs."gore-and-ash-logging" or (errorHandler.buildDepError "gore-and-ash-logging"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          (hsPkgs."typesafe-endian" or (errorHandler.buildDepError "typesafe-endian"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        libs = if system.isWindows
          then [ (pkgs."gmp-10" or (errorHandler.sysDepError "gmp-10")) ]
          else [ (pkgs."gmp" or (errorHandler.sysDepError "gmp")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }