{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dao";
          version = "0.1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "(C) 2008-2014 Ramin Honary, all rights reserved.";
        maintainer = "ramin.honary@gmail.com";
        author = "Ramin Honary";
        homepage = "";
        url = "";
        synopsis = "Dao is meta programming language with its own built-in\ninterpreted language, designed with artificial\nintelligence applications in mind.";
        description = "The Dao modules and interactive program is a meta programming language\nintended for artificial intelligence uses. It is very much like the\nclassic UNIX \"AWK\" scripting language, but instead of using POSIX-style\nregular epxressions, the patterns used in Dao are designed to more easily\nmatch natural language input.";
        buildType = "Simple";
      };
      components = {
        dao = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.time
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.binary
            hsPkgs.Crypto
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.data-binary-ieee754
          ];
        };
        exes = {
          dao = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.time
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.utf8-string
              hsPkgs.binary
              hsPkgs.Crypto
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.data-binary-ieee754
            ];
          };
        };
        tests = {
          main = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.time
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.utf8-string
              hsPkgs.binary
              hsPkgs.Crypto
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.data-binary-ieee754
            ];
          };
        };
      };
    }