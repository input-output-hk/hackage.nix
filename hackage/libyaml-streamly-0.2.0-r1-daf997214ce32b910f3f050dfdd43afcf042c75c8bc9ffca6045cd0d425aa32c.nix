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
    flags = { no-unicode = false; system-libyaml = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "libyaml-streamly"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Julian Ospald <hasufell@posteo.de>";
      author = "Michael Snoyman <michael@snoyman.com>, Anton Ageev <antage@gmail.com>,Kirill Simonov, Julian Ospald <hasufell@posteo.de>";
      homepage = "https://github.com/hasufell/streamly-yaml#readme";
      url = "";
      synopsis = "Low-level, streaming YAML interface via streamly.";
      description = "Rewrite of libyaml in streamly";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."directory" or (errorHandler.buildDepError "directory"));
        libs = (pkgs.lib).optional (!(!flags.system-libyaml)) (pkgs."yaml" or (errorHandler.sysDepError "yaml"));
        buildable = true;
        };
      };
    }