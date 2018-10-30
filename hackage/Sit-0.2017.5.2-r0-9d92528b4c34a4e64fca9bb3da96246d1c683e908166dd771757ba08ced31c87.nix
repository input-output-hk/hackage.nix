{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Sit";
        version = "0.2017.5.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Andreas Abel <andreas.abel@gu.se>";
      author = "Andreas Abel <andreas.abel@gu.se>";
      homepage = "https://github.com/andreasabel/Sit";
      url = "";
      synopsis = "Prototypical type checker for Type Theory with Sized Natural Numbers";
      description = "Sit = Size-irrelevant types\n\nSit is a prototypical language with an Agda-compatible syntax.\nIt has dependent function types, universes, sized natural numbers,\nand case and recursion over natural numbers.\nThere is a relevant and an irrelevant quantifier over sizes.\nFor an example, see file test/Test.agda.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Sit.bin" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.data-lens-light)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }