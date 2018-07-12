{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      haste-inst = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "treersec";
          version = "1";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "jason@sneathlane.com";
        author = "Jason Priestley";
        homepage = "http://sneathlane.com/treersec";
        url = "";
        synopsis = "Structure Editing Combinators";
        description = "Build a structure editor for a programming language from combinators following the grammar.";
        buildType = "Simple";
      };
      components = {
        "treersec" = {
          depends  = if _flags.haste-inst
            then [
              hsPkgs.base
              hsPkgs.haste-lib
              hsPkgs.sneathlane-haste
            ]
            else [
              hsPkgs.base
              hsPkgs.haste-compiler
              hsPkgs.sneathlane-haste
            ];
        };
      };
    }