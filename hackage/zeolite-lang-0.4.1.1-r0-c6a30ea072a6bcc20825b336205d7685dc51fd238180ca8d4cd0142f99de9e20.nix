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
      specVersion = "2.2";
      identifier = { name = "zeolite-lang"; version = "0.4.1.1"; };
      license = "Apache-2.0";
      copyright = "(c) Kevin P. Barry 2019-2020";
      maintainer = "Kevin P. Barry <ta0kira@gmail.com>";
      author = "Kevin P. Barry";
      homepage = "https://github.com/ta0kira/zeolite";
      url = "";
      synopsis = "Zeolite is a statically-typed, general-purpose programming language.";
      description = "Zeolite is an experimental general-purpose programming language. See\n<https://github.com/ta0kira/zeolite Zeolite on GitHub> for more details.\n\nThe installation process is still a bit rough, and therefore must be done in a\nfew stages:\n\n* Ensure that you have a C++ compiler such as @clang++@ or @g++@ installed,\nand an archiver such as @ar@ installed, all callable from a shell.\n* Install the binaries using @cabal@. After this step, the compiler itself is\ninstalled, but it cannot actually create executables from source code.\n\n@\ncabal install zeolite-lang\n@\n\n* Execute the setup binary that gets installed by @cabal@. This will give you\na series of prompts to verify the binaries above. It will then\nautomatically build the supporting libraries.\n\n@\nzeolite-setup\n@\n\n* (Optional) Once the setup above is completed, you should run the\nintegration tests to ensure that code can be compiled and run. These can\ntake quite a while to complete. Please create an\n<https://github.com/ta0kira/zeolite/issues issue on GitHub> if you encounter\nany errors.\n\n@\nZEOLITE_PATH=$(zeolite --get-path)\nzeolite -p \"$ZEOLITE_PATH\" -t tests lib\\/file lib\\/math lib\\/util\n@\n\nThe <https://github.com/ta0kira/zeolite/tree/master/example code examples> are\nlocated in @$ZEOLITE_PATH/example@. You should not normally need to use\n@$ZEOLITE_PATH@ outside of running included tests and examples.";
      buildType = "Simple";
      };
    components = {
      sublibs = {
        "zeolite-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      exes = {
        "zeolite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."zeolite-lang".components.sublibs.zeolite-internal or (errorHandler.buildDepError "zeolite-lang:zeolite-internal"))
            ];
          buildable = true;
          };
        "zeolite-setup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."zeolite-lang".components.sublibs.zeolite-internal or (errorHandler.buildDepError "zeolite-lang:zeolite-internal"))
            ];
          buildable = true;
          };
        };
      tests = {
        "zeolite-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."zeolite-lang".components.sublibs.zeolite-internal or (errorHandler.buildDepError "zeolite-lang:zeolite-internal"))
            ];
          buildable = true;
          };
        };
      };
    }