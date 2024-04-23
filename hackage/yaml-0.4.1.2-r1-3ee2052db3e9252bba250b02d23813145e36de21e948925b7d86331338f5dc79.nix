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
    flags = { system-libyaml = false; nolib = false; buildtests = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "yaml"; version = "0.4.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>, Anton Ageev <antage@gmail.com>,Kirill Simonov ";
      homepage = "http://github.com/snoyberg/yaml/";
      url = "";
      synopsis = "Low-level binding to the libyaml C library.";
      description = "Provides support for parsing and emitting Yaml documents.\n\nThis package includes the full libyaml C library version 0.1.2 by Kirill\nSimonov (<http://pyyaml.org/wiki/LibYAML>) in the package so you\ndon't need to worry about any non-Haskell dependencies.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
        ];
        pkgconfig = pkgs.lib.optional (flags.system-libyaml) (pkgconfPkgs."yaml-0.1" or (errorHandler.pkgConfDepError "yaml-0.1"));
        buildable = if flags.nolib then false else true;
      };
      exes = {
        "runtests" = {
          depends = pkgs.lib.optionals (flags.buildtests) [
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          ];
          pkgconfig = pkgs.lib.optional (flags.system-libyaml) (pkgconfPkgs."yaml-0.1" or (errorHandler.pkgConfDepError "yaml-0.1"));
          buildable = if flags.buildtests then true else false;
        };
      };
    };
  }