{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "tdoc";
          version = "0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Nicolas Pouillard";
        maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
        author = "Nicolas Pouillard";
        homepage = "";
        url = "";
        synopsis = "TDoc is a typed document builder with support for (X)HTML";
        description = "";
        buildType = "Simple";
      };
      components = {
        tdoc = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.template-haskell
            hsPkgs.xhtml
            hsPkgs.bytestring
          ];
        };
      };
    }