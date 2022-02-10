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
      identifier = { name = "Grow"; version = "1.1.0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "marc.coiffier@gmail.com";
      author = "Marc Coiffier";
      homepage = "";
      url = "";
      synopsis = "A declarative make-like interpreter.";
      description = "Grow is a well-defined replacement for Makefiles and the like to build complex\nhierarchies of files with minimal effort.\n\nLike many Makefile-like tools, Grow depends on the notion of\ntimestamps to determine whether a file should be recompiled or\nnot. Grow is much simpler than those, though, and I might argue way\neasier to use as well.\n\nOn startup, Grow will look for a file named \"Seed\" in the current\ndirectory, and evaluate the grow expressions contained within.\n\nFor example, here is a simple Seed file to compile a single C file\ninto an executable.\n\n> tee $$arg:in {\n>   all = ($main:seq \"All done !\"):in $execs\n>   execs = hook ld [main] [main.o] :in $objects\n>   objects = hook cc [main.o] [main.c]\n> }\n\nNotice the `hook` function ? It is the Grow primitive that calls an\nexternal program to perform actual tasks.\n\nIn Grow, hooks are expected to only accept files as their arguments,\nso we have to write the wrapper scripts `cc` and `ld` that accept\narguments in the form \"<destination>... <source>...\". They are pretty\ntrivial to write since they only involve renaming variables and\nswapping arguments.\n\nHere are sample `cc` and `ld` scripts to show you there is nothing\nmagical about them :\n\n> #!/bin/bash\n> obj=\"$1\" ; shift ; src=\"$1\"\n> gcc -c \"$src\" -o \"$obj\"\n\n> #!/bin/bash\n> bin=\"$1\" ; shift ; obj=\"$1\"\n> gcc \"$obj\" -o \"$bin\"\n\nIn grow, instead of writing recipes in the configuration, we just declare\nhooks and then write the appropriate wrapper scripts to call compilers with\nthe correct flags and arguments.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."definitive-base" or (errorHandler.buildDepError "definitive-base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."definitive-parser" or (errorHandler.buildDepError "definitive-parser"))
          (hsPkgs."definitive-filesystem" or (errorHandler.buildDepError "definitive-filesystem"))
          (hsPkgs."definitive-reactive" or (errorHandler.buildDepError "definitive-reactive"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      };
    }