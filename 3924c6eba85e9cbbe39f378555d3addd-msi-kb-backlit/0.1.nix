{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "msi-kb-backlit";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Dimitri Sabadie";
        maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
        author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A command line tool to change backlit colors of your MSI\nkeyboards";
        description = "Change the backlit colors of your MSI keyboards!\nFeatures set includes changing colors, intensites and\nmodes.\nYou might need /super user/ rights in order to correctly\nrun the program.\nSuccessfully tested on a **MSI GS60 Ghost Pro 2QE**.";
        buildType = "Simple";
      };
      components = {
        exes = {
          msi-kb-backlit = {
            depends  = [
              hsPkgs.base
              hsPkgs.hid
              hsPkgs.split
              hsPkgs.bytestring
            ];
          };
        };
      };
    }