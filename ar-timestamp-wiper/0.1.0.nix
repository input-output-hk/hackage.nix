{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ar-timestamp-wiper";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "2013 Niklas Hambüchen <mail@nh2.me>";
        maintainer = "Niklas Hambüchen <mail@nh2.me>";
        author = "Niklas Hambüchen <mail@nh2.me>";
        homepage = "https://github.com/nh2/ar-timestamp-wiper";
        url = "";
        synopsis = "Wipes time stamps from .a files (like ar -D)";
        description = "This application takes an archive (.a) file as created by the Unix ar tool,\nand sets all time stamps in it to zero.\n\nThese time stamps make ar generate different output for same input every time,\nwhich is problematic if you want to know if the contents actually changed\nas compared to the last time you created the archive (e.g. in build tools\nto avoid unnecessary linking).\n\nRecent versions of GNU binutils and BSD ar af the -D flag for deterministic\nmode that creates the archive with all time stamps set to zero.\nHowever, these versions of ar are not wide spread yet, and this tool\ncan help with that.";
        buildType = "Simple";
      };
      components = {
        ar-timestamp-wiper = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        exes = {
          ar-timestamp-wiper = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
            ];
          };
        };
      };
    }