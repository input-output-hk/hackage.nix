{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "show";
          version = "0.6";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Lambdabot developers";
        author = "Lambdabot devs, Twan van Laarhoven <twanvl@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "'Show' instances for Lambdabot";
        description = "Show instances for functions and IO procedures";
        buildType = "Simple";
      };
      components = {
        show = {
          depends  = if _flags.base4
            then [ hsPkgs.base hsPkgs.syb ]
            else [ hsPkgs.base ];
        };
      };
    }