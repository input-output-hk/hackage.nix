{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "hsx";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Niklas Broberg <nibro@cs.chalmers.se>";
        author = "Niklas Broberg, Joel Björnson";
        homepage = "http://code.google.com/hsp";
        url = "";
        synopsis = "HSX (Haskell Source with XML) allows literal XML syntax to be used in Haskell source code.";
        description = "HSX (Haskell Source with XML) allows literal XML syntax to be used in Haskell source code.\nThe trhsx preprocessor translates .hsx source files into ordinary .hs files. Literal\nXML syntax is translated into function calls for creating XML values of the appropriate\nforms.\ntrhsx transforms literal XML syntax into a series of function calls. Any project\ncan make use of the syntax by providing definitions for those functions, and the\nXML values produced will be of the types specified. This works for any types, since\ntrhsx doesn't make any assumptions, or inserts any information depending on types.\nXMLGenerator defines a few typeclasses that together cover the functions injected by the\npreprocessor. A project that uses these classes to provide the semantics for the injected\nsyntax will be able to use any functions written in terms of these, allowing better code\nreusability than if each project defines its own semantics for the XML syntax. Also, the classes\nmakes it possible to use the literal syntax at different types within the same module.\nAchieving that is not as simple as it may seem, but the XMLGenerator module provides all the\nnecessary machinery.";
        buildType = "Simple";
      };
      components = {
        hsx = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.haskell-src-exts
            hsPkgs.utf8-string
          ];
        };
        exes = {
          trhsx = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.haskell-src-exts
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }