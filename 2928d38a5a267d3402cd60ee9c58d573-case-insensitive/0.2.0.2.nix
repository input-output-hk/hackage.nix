{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "case-insensitive";
          version = "0.2.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2011 Bas van Dijk";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Bas van Dijk";
        homepage = "";
        url = "";
        synopsis = "Case insensitive string comparison";
        description = "The module @Data.CaseInsensitive@ provides the 'CI' type\nconstructor which can be parameterised by a string-like\ntype like: 'String', 'ByteString', 'Text',\netc.. Comparisons of values of the resulting type will be\ninsensitive to cases.";
        buildType = "Simple";
      };
      components = {
        "case-insensitive" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
      };
    }