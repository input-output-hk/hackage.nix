{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ctkl";
          version = "0.27.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mwotton@gmail.com";
        author = "Manuel Chakravarty, Sven Panne";
        homepage = "";
        url = "";
        synopsis = "packaging of Manuel Chakravarty's CTK Light for Hackage";
        description = "Functional languages like Haskell are ideal for implementing compilers. Complemented with a lexer and parser generator, they provide much of the functionality and ease-of-use associated with specialized compiler tools (aka compiler compilers) while being more flexible, better supported, and guaranteeing better long time availability. There is a significant set of functionality that is required in each compiler like symbol table management, input-output operations, error management, and so on, which are good candidates for code reuse. The Compiler Toolkit is an attempt to provide an open collection of modules for these recurring tasks in a popular functional language. The toolkit is used for the interface generator C->Haskell.";
        buildType = "Simple";
      };
      components = {
        ctkl = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }