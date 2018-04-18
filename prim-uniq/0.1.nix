{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "prim-uniq";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "https://github.com/mokus0/prim-uniq";
        url = "";
        synopsis = "Opaque unique identifiers in primitive state monads";
        description = "Opaque unique identifiers in primitive state monads\nand a GADT-like type using them as witnesses of type\nequality.";
        buildType = "Simple";
      };
      components = {
        prim-uniq = {
          depends  = [
            hsPkgs.base
            hsPkgs.dependent-sum
            hsPkgs.primitive
          ];
        };
      };
    }