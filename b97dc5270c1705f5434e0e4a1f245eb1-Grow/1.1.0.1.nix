{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Grow";
          version = "1.1.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "marc.coiffier@gmail.com";
        author = "Marc Coiffier";
        homepage = "";
        url = "";
        synopsis = "A declarative make-like interpreter.";
        description = "Grow is a well-defined replacement for Makefiles and the like to build complex\nhierarchies of files with minimal effort.\n\nLike many Makefile-like tools, Grow depends on the notion of\ntimestamps to determine whether a file should be recompiled or\nnot. Grow is much simpler than those, though, and I might argue way\neasier to use as well.\n\nOn startup, Grow will look for a file named \"Seed\" in the current\ndirectory, and evaluate the grow expressions contained within.\n\nFor example, here is a simple Seed file to compile a single C file\ninto an executable.\n\ntee \$\$arg:in {\nall = (\$main:seq \"All done !\"):in \$execs\nexecs = hook ld [main] [main.o] :in \$objects\nobjects = hook cc [main.o] [main.c]\n}\n\nNotice the `hook` function ? It is the Grow primitive that calls an\nexternal program to perform actual tasks.\n\nIn Grow, hooks are expected to only accept files as their arguments,\nso we have to write the wrapper scripts `cc` and `ld` that accept\narguments in the form \"<destination>... <source>...\". They are pretty\ntrivial to write since they only involve renaming variables and\nswapping arguments.\n\nHere are sample `cc` and `ld` scripts to show you there is nothing\nmagical about them :\n\n#!/bin/bash\nobj=\"\$1\" ; shift ; src=\"\$1\"\ngcc -c \"\$src\" -o \"\$obj\"\n\n#!/bin/bash\nbin=\"\$1\" ; shift ; obj=\"\$1\"\ngcc \"\$obj\" -o \"\$bin\"\n\nIn grow, instead of writing recipes in the configuration, we just declare\nhooks and then write the appropriate wrapper scripts to call compilers with\nthe correct flags and arguments.";
        buildType = "Simple";
      };
      components = {
        Grow = {
          depends  = [
            hsPkgs.base
            hsPkgs.definitive-base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.primitive
            hsPkgs.definitive-parser
            hsPkgs.definitive-filesystem
            hsPkgs.definitive-reactive
            hsPkgs.clock
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.unix
            hsPkgs.process
          ];
        };
      };
    }