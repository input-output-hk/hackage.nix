{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cond";
          version = "0.4.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "acurtis@spsu.edu";
        author = "Adam Curtis";
        homepage = "https://github.com/kallisti-dev/cond";
        url = "";
        synopsis = "Basic conditional and boolean operators with monadic variants.";
        description = "This library provides:\n\n* Implementations of various overloaded conditional operations\n\n* Lifted monadic variants of those operations and common boolean operators\n\n* A typeclass for boolean algebras.\n\nFeel free to send ideas and suggestions for new conditional operators to the\nmaintainer.\n\nMonadic looping constructs are not included as part of this package, since the\nmonad-loops package has a fairly complete collection of them already.";
        buildType = "Simple";
      };
      components = {
        cond = {
          depends  = [ hsPkgs.base ];
        };
      };
    }