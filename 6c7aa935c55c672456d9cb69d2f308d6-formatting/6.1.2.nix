{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "formatting";
          version = "6.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Chris Done, Shachaf Ben-Kiki, Martijn van Steenbergen, Mike Meyer";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done, Shachaf Ben-Kiki, Martijn van Steenbergen, Mike Meyer";
        homepage = "";
        url = "";
        synopsis = "Combinator-based type-safe formatting (like printf() or FORMAT)";
        description = "Combinator-based type-safe formatting (like printf() or FORMAT), modelled from the HoleyMonoids package.";
        buildType = "Simple";
      };
      components = {
        "formatting" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text-format
            hsPkgs.text
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.scientific
            hsPkgs.clock
          ];
        };
      };
    }