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
      identifier = { name = "reliable-io"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Pavel Krajcevski, 2020";
      maintainer = "krajcevski@gmail.com";
      author = "Pavel Krajcevski";
      homepage = "http://www.github.com/Mokosha/reliable-io";
      url = "";
      synopsis = "Bindings to the low-level reliable.io library.";
      description = "Bindings to the low-level reliable.io library, which come\nin two flavors: c-level bindings and a high-level\ninterface to the library.\nFor the low level interface, refer to the\nBindings.Reliable.IO module.\nFor the high-level interface, which is a bit closer to\nidiomatic Haskell, refer to the Reliable.IO module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      exes = {
        "reliable-io-c-unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."reliable-io" or (errorHandler.buildDepError "reliable-io"))
          ];
          buildable = if flags.examples then true else false;
        };
        "reliable-io-soak" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."reliable-io" or (errorHandler.buildDepError "reliable-io"))
          ];
          buildable = if flags.examples then true else false;
        };
      };
    };
  }