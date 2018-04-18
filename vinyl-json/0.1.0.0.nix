{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      documentation = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vinyl-json";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "theo.belaire@gmail.com";
        author = "Theo Belaire";
        homepage = "";
        url = "";
        synopsis = "Provide json instances automagically to vinyl types";
        description = "This adds Data.Aeson FromJSON instances for Simple records";
        buildType = "Simple";
      };
      components = {
        vinyl-json = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.vinyl
            hsPkgs.bytestring
          ] ++ pkgs.lib.optional _flags.documentation hsPkgs.hscolour;
        };
        tests = {
          hlint = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }