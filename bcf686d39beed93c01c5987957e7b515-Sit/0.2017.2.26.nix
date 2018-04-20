{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Sit";
          version = "0.2017.2.26";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Anonymous";
        author = "Anonymous";
        homepage = "NONE";
        url = "";
        synopsis = "Prototypical type checker for Type Theory with Sized Natural Numbers";
        description = "Sit = Size-irrelevant types\n\nSit is a prototypical language with an Agda-compatible syntax.\nIt has dependent function types, universes, sized natural numbers,\nand case and recursion over natural numbers.\nThere is a relevant and an irrelevant quantifier over sizes.\nFor an example, see file test/Test.agda";
        buildType = "Simple";
      };
      components = {
        exes = {
          Sit.bin = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-lens-light
              hsPkgs.mtl
            ];
          };
        };
      };
    }