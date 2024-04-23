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
      identifier = { name = "zeolite-lang"; version = "0.22.0.0"; };
      license = "Apache-2.0";
      copyright = "(c) Kevin P. Barry 2019-2021";
      maintainer = "Kevin P. Barry <ta0kira@gmail.com>";
      author = "Kevin P. Barry";
      homepage = "https://github.com/ta0kira/zeolite";
      url = "";
      synopsis = "Zeolite is a statically-typed, general-purpose programming language.";
      description = "Zeolite is an experimental general-purpose programming language. See\n<https://github.com/ta0kira/zeolite Zeolite on GitHub> for more details.\n\nThe installation process is still a bit rough, and therefore must be done in a\nfew stages:\n\n* Ensure that you have a C++ compiler such as @clang++@ or @g++@ installed,\nand an archiver such as @ar@ installed, all callable from a shell.\n* Install the binaries using @cabal@. After this step, the compiler itself is\ninstalled, but it cannot actually create executables from source code.\n\n@\ncabal install zeolite-lang\n@\n\n* Execute the setup binary that gets installed by @cabal@. This will give you\na series of prompts to verify the binaries above. It will then\nautomatically build the supporting libraries.\n\n@\n# By default, setup is interactive.\nzeolite-setup\n\n# To choose the c++ and ar binaries non-interactively, include them as args.\nzeolite-setup \\/usr\\/bin\\/clang++ \\/usr\\/bin\\/ar\n\n# Or just choose the 1st match for each.\nzeolite-setup 1 1\n@\n\n* (Optional) As a sanity check, compile and run\n@<https://github.com/ta0kira/zeolite/tree/master/example/hello example/hello>@.\nPlease create an\n<https://github.com/ta0kira/zeolite/issues issue on GitHub> if you encounter\nany errors.\n\n@\nZEOLITE_PATH=$(zeolite --get-path)\nzeolite -p \"$ZEOLITE_PATH\\/example\\/hello\" -I lib\\/util --fast HelloDemo hello-demo.0rx\n$ZEOLITE_PATH\\/example\\/hello\\/HelloDemo\n@\n\nThe <https://github.com/ta0kira/zeolite/tree/master/example code examples> are\nlocated in @$ZEOLITE_PATH/example@. You should not normally need to use\n@$ZEOLITE_PATH@ outside of running the included tests and examples.";
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
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
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
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
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
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
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