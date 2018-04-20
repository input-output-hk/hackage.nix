{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "fclabels";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sebastiaan Visser <sfvisser@cs.uu.nl>";
        author = "Sebastiaan Visser, Erik Hesselink";
        homepage = "";
        url = "";
        synopsis = "First class record labels";
        description = "First class labels for records, with combinators, allowing\nselection, modification and update inside (nested) records.\nAlso includes MonadState versions of these, and template\nhaskell generation of the labels.";
        buildType = "Simple";
      };
      components = {
        fclabels = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.monads-fd
          ];
        };
      };
    }