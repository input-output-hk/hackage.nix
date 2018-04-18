{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Javav";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Tony Morris";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "";
        url = "";
        synopsis = "A utility to print the target version of Java class files.";
        description = "A utility to print the target version of Java class files.";
        buildType = "Simple";
      };
      components = {
        exes = {
          javav = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }