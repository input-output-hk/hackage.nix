{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "annotated-wl-pprint";
          version = "0.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "david@davidchristiansen.dk";
        author = "Daan Leijen, David Raymond Christiansen";
        homepage = "https://github.com/david-christiansen/annotated-wl-pprint";
        url = "";
        synopsis = "The Wadler/Leijen Pretty Printer, with annotation support";
        description = "This is a modified version of wl-pprint, which was based on Wadler's\npaper \"A Prettier  Printer\".  See the haddocks for full info.  This\nversion allows the library user to annotate the text with semantic\ninformation, which can later be rendered in a variety of ways.";
        buildType = "Simple";
      };
      components = {
        "annotated-wl-pprint" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }