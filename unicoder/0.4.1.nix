{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "unicoder";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright © 2013, 2014, Okuno Zankoku";
        maintainer = "zankoku.okuno@gmail.com";
        author = "Zankoku Okuno";
        homepage = "https://github.com/Zankoku-Okuno/unicoder";
        url = "";
        synopsis = "Make writing in unicode easy.";
        description = "Unicoder is a command-line tool transforms text documents, replacing simple\npatterns with unicode equivalents. The patterns can be easily configured by\nthe user.\nThis package is especially meant to open the vast and expressive array\nof unicode identifiers to programmers and language designers, but there's\nnothing wrong with a technically savvy user putting unicoder to work\non documents for human consumption.\nAny system of special characters can be made easy to type on any keyboard\nand in any context as long as unicode supports it.\n\nCabal wants to fight me over typesetting some examples, so check out\n<http://zankoku-okuno.viewdocs.io/unicoder/ the real docs>\nfor a decent look at the features.\n\nIn the interests of giving readers /some/ idea whats going on,\nwith the default settings,\n\n> \\E x. \\A y. x \\-> y\n> \\l x,y. x \\of x \\of y\n\nbecomes\n\n> ∃x ∀y x → y\n> λ x,y. x ∘ x ∘ y\n\nexcept that the newline isn't removed (thanks, cabal!). Also, there are a couple\nimportant features that I can't seem to get cabal to even parse (thanks again!).";
        buildType = "Simple";
      };
      components = {
        unicoder = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.attoparsec
          ];
        };
        exes = {
          unicoder = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.attoparsec
              hsPkgs.directory
            ];
          };
        };
        tests = {
          test-unicoder = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.attoparsec
            ];
          };
        };
      };
    }