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
      specVersion = "3.6";
      identifier = { name = "hs-tango"; version = "2.0.0"; };
      license = "MIT";
      copyright = "2024 Philipp Middendorf";
      maintainer = "philipp.middendorf@desy.de";
      author = "DESY";
      homepage = "https://github.com/pmiddend/hs-tango";
      url = "";
      synopsis = "Bindings to the Tango Controls system";
      description = "Haskell bindings for Tango, part of the Tango Distributed Control System toolkit. Some general notes about this project:\n\n* There are raw C bindings inside the 'Tango.Raw' package. You shouldn't have to use these, but they might be a fallback if you need something very specific.\n* C types are mapped to sized Haskell types. For example, an attribute of type \"Short\" will be mapped to the @Int16@ type. The names of the value constructors will be called ...Short, still, to have some symmetry with the Tango user interfaces.\n* The implementation regarding some obscure types is lackluster: \"encoded\", \"long string array\" and \"double string array\" for example. Patches welcome!\n\nIf you want to connect to some Tango devices, head over to 'Tango.Client', where you'll also find some examples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."derive-storable" or (errorHandler.buildDepError "derive-storable"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
        ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        pkgconfig = [
          (pkgconfPkgs."tango" or (errorHandler.pkgConfDepError "tango"))
        ];
        buildable = true;
      };
      benchmarks = {
        "web-astor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-tango" or (errorHandler.buildDepError "hs-tango"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."lucid2" or (errorHandler.buildDepError "lucid2"))
            (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          ];
          buildable = true;
        };
        "tango-read-test-device" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-tango" or (errorHandler.buildDepError "hs-tango"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }