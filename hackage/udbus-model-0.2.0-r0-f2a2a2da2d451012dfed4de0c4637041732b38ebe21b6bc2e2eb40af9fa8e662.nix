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
    flags = { executable = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "udbus-model"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-udbus";
      url = "";
      synopsis = "Model API for udbus introspection and definitions";
      description = "Model API for udbus introspection and definitions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."udbus" or (errorHandler.buildDepError "udbus"))
        ];
        buildable = true;
      };
      exes = {
        "dbus-model-parse" = {
          depends = pkgs.lib.optionals (flags.executable) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."groom" or (errorHandler.buildDepError "groom"))
            (hsPkgs."udbus" or (errorHandler.buildDepError "udbus"))
            (hsPkgs."udbus-model" or (errorHandler.buildDepError "udbus-model"))
          ];
          buildable = if flags.executable then true else false;
        };
      };
    };
  }