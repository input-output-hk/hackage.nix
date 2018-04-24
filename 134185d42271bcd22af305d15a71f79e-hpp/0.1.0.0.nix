{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hpp";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2015 Anthony Cowley";
        maintainer = "acowley@gmail.com";
        author = "Anthony Cowley";
        homepage = "https://github.com/acowley/hpp";
        url = "";
        synopsis = "A Haskell pre-processor";
        description = "@hpp@ is a Haskell pre-processor that is also a\nC89/C90-compatible pre-processor (with the addition of a\n@--cpp@ flag). It is packaged as both a library and\nan executable.\n\nTo use as a Haskell preprocessor for resolving @#ifdef@\nconditionals and simple macro expansion while still\nallowing multi-line string literals, an invocation might\nlook like,\n\n@\nhpp -DDEBUG Foo.hs\n@\n\nTo use as a C preprocessor, an invocation might look\nlike,\n\n@\nhpp -DDEBUG --cpp foo.c\n@\n\nTo have GHC use @hpp@ as the C pre-processor, add this\nline to the top of a Haskell source file that makes use\nof the @CPP@ @LANGUAGE@ pragma.\n\n@\n&#123;-\\# OPTIONS_GHC -cpp -pgmPhpp -optP\\-\\-cpp \\#-&#125;\n@";
        buildType = "Simple";
      };
      components = {
        hpp = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.time
            hsPkgs.filepath
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") hsPkgs.transformers;
        };
        exes = {
          hpp = {
            depends  = [
              hsPkgs.hpp
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.time
              hsPkgs.filepath
            ];
          };
        };
      };
    }