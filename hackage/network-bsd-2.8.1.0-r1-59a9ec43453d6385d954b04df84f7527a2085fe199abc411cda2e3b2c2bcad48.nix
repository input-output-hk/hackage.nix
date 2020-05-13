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
      identifier = { name = "network-bsd"; version = "2.8.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto, Herbert Valerio Riedel";
      author = "";
      homepage = "https://github.com/haskell/network-bsd";
      url = "";
      synopsis = "POSIX network database (<netdb.h>) API";
      description = "This package provides Haskell bindings to the\nthe [POSIX network database (<netdb.h>) API](http://pubs.opengroup.org/onlinepubs/009696699/basedefs/netdb.h.html).\n\n=== Relationship to the @network@ package\n\nThe @network@ package version 2.* series provides \"Network.BSD\" but\nit is removed starting with @network@ version 3.0.\n\nThis package provides the \"Network.BSD\" module split off from the\n<https://hackage.haskell.org/package/network network package>.\n\nIf in addition to the @network@'s modules also \"Network.BSD\" is\nnecessary, add @network-bsd@ to your dependencies like so:\n\n> library\n>     build-depends: network     >= 2.7 && < 3.1\n>                  , network-bsd >= 2.7 && < 2.9\n\nI.e. you can control the version of the @network@ package\nindependently.\n\n__NOTE__: Starting with @network-bsd-2.8.1.0@ the APIs of @network@\nand @network-bsd@ evolve differently, and consequently the\nversioning doesn't match up anymore! Moreover, also starting with\nversion @network-bsd-2.8.1.0@ this package requires @network >= 3@\nin order to avoid module name clashes with @network < 3@'s\n\"Network.BSD\" module.\n\nHowever, @network-bsd-2.7.0.0@ and @network-bsd-2.8.0.0@ passes thru\nthe \"Network.BSD\" module from @network-2.7.*@ and @network-2.8.*@\nrespectively in a non-clashing way via Cabal's\n<https://www.haskell.org/cabal/users-guide/developing-packages.html#pkg-field-library-reexported-modules reexported-modules>\nfeature while ensuring a well-defined\n<https://pvp.haskell.org/ API versioning> of the observable API of\n@network-bsd@. This is why the example above supporting a wide range\nof @network@ versions works by including version 2.7.0.0 in the\nrequired version range of @network-bsd@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }