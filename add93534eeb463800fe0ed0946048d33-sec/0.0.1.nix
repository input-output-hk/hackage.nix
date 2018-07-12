{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "sec";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Steffen Siering <steffen dot siering -> gmail.com>";
        author = "Steffen Siering <steffen dot siering -> gmail.com>";
        homepage = "http://github.com/urso/sec";
        url = "";
        synopsis = "Semantic Editor Combinators.";
        description = "Semantic Editor Combinators as described by Conal Elliott\n(See: <http://conal.net/blog/posts/semantic-editor-combinators/>)\nand Template Haskell support for automatically creating semantic\neditor combinators from Algebraic Data Types.";
        buildType = "Simple";
      };
      components = {
        "sec" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }