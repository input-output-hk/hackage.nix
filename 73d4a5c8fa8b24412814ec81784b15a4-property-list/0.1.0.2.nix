{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "property-list";
          version = "0.1.0.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <james.cook@usma.edu>";
        author = "James Cook <james.cook@usma.edu>";
        homepage = "http://code.haskell.org/~mokus/property-list";
        url = "";
        synopsis = "Apple property list parser";
        description = "Parser, data type and formatter for Apple XML and binary property lists.";
        buildType = "Simple";
      };
      components = {
        "property-list" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.free
            hsPkgs.transformers
            hsPkgs.old-locale
            hsPkgs.oneOfN
            hsPkgs.recursion-schemes
            hsPkgs.syb
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.vector
            hsPkgs.xml
          ];
        };
      };
    }