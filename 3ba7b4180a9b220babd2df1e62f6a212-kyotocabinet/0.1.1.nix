{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "kyotocabinet";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Francesco Mazzoli (f@mazzo.li)";
        author = "Francesco Mazzoli (f@mazzo.li)";
        homepage = "";
        url = "";
        synopsis = "Mid level bindings to Kyoto Cabinet";
        description = "Mid level bindings to Kyoto Cabinet, plus some wrappers data type for ease of use.";
        buildType = "Simple";
      };
      components = {
        "kyotocabinet" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cereal
            hsPkgs.bytestring
          ];
          libs = [ pkgs.kyotocabinet ];
        };
      };
    }