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
    flags = { no-unicode = false; system-libyaml = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "libyaml-streamly"; version = "0.2.2.1"; };
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
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
        ] ++ pkgs.lib.optional (!flags.system-libyaml) (hsPkgs."libyaml-clib" or (errorHandler.buildDepError "libyaml-clib"))) ++ pkgs.lib.optional (system.isWindows) (hsPkgs."directory" or (errorHandler.buildDepError "directory"));
        pkgconfig = pkgs.lib.optional (flags.system-libyaml) (pkgconfPkgs."yaml-0.1" or (errorHandler.pkgConfDepError "yaml-0.1"));
        buildable = true;
      };
    };
  }