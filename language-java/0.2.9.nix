{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "language-java";
          version = "0.2.9";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Niklas Broberg";
        homepage = "http://github.com/vincenthz/language-java";
        url = "";
        synopsis = "Java source manipulation";
        description = "Manipulating Java source: abstract syntax, lexer, parser, and pretty-printer.";
        buildType = "Simple";
      };
      components = {
        language-java = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.pretty
            hsPkgs.parsec
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.syb;
        };
        tests = {
          test-java-parse = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.language-java
              hsPkgs.filepath
              hsPkgs.directory
            ];
          };
        };
      };
    }