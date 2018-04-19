{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "general-prelude";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "johnw@newartisans.com";
        author = "John Wiegley, Svein Ove Aas";
        homepage = "";
        url = "";
        synopsis = "Prelude replacement using generalized type classes where possible";
        description = "This Prelude prefers more general and performance-oriented types,\nsuch as Category, Foldable, Traversable, Data.Text and Control.Lens.";
        buildType = "Simple";
      };
      components = {
        general-prelude = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.pointless-fun
            hsPkgs.strict
            hsPkgs.system-filepath
          ];
        };
      };
    }