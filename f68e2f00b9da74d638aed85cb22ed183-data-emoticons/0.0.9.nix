{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-emoticons";
          version = "0.0.9";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "runeblaze@excite.co.jp";
        author = "RuneBlaze";
        homepage = "";
        url = "";
        synopsis = "Combinator emoticons: data-aviary in the flavor of emoticons";
        description = ">\nCombinators copied from Data.Aviary.Birds renamed according to emoticons.";
        buildType = "Simple";
      };
      components = {
        data-emoticons = {
          depends  = [ hsPkgs.base ];
        };
      };
    }