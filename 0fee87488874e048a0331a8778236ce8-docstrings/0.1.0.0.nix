{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "docstrings";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2017 Dai";
        maintainer = "dailectic@gmail.com";
        author = "Dai";
        homepage = "https://github.com/daig/docstrings#readme";
        url = "";
        synopsis = "Docstrings for documentation in the repl";
        description = "This package provides <https://en.wikipedia.org/wiki/Docstring docstring> funcionality similar to Python or Lisp.\nDocstrings are simply strings bound to identifier names.\nTo get access to a name one must enable @-XTemplateHaskell@ and use\nprime notation like @'myValIdentifier@ and @''MyTypeIdentifier@.\nAccess Docstrings in the repl via @help 'myIdentifier@,\nand introduce Docstrings via @docstring 'myIdentifier \"some documentation\"@ in a module.";
        buildType = "Simple";
      };
      components = {
        docstrings = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.template-haskell
            hsPkgs.heredoc
          ];
        };
      };
    }