{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "formatting";
          version = "3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Chris Done, Shachaf Ben-Kiki, Martijn van Steenbergen";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done, Shachaf Ben-Kiki, Martijn van Steenbergen";
        homepage = "";
        url = "";
        synopsis = "Combinator-based type-safe formatting (like printf() or FORMAT)";
        description = "Combinator-based type-safe formatting (like printf() or FORMAT), modelled from the HoleyMonoids package.";
        buildType = "Simple";
      };
      components = {
        formatting = {
          depends  = [
            hsPkgs.base
            hsPkgs.text-format
            hsPkgs.text
          ];
        };
      };
    }