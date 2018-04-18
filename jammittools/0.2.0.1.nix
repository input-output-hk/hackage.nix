{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "jammittools";
          version = "0.2.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "miketolly@gmail.com";
        author = "Michael Tolly";
        homepage = "https://github.com/mtolly/jammittools";
        url = "";
        synopsis = "Export sheet music and audio from Windows/Mac app Jammit";
        description = "<http://www.jammit.com/ Jammit> is a service and associated\napp for Windows\\/Mac\\/iOS that sells isolated instrument\naudio tracks from popular music, along with full\ntranscriptions. This is a tool that allows you to export the\nsheet music (in PDF format) and audio (in WAV format) to\ntracks that you have purchased.\n\nAny sheet music or audio you export is solely for your own\nuse, e.g. for use on Linux and Android devices that do not\nhave the official app available. Please do not use this tool\nto share content with others who have not purchased it!\n\nYou must install ImageMagick and Sox for sheet music and\naudio export respectively, because they are used to do the\nactual conversion.\nPlease see the\n<https://github.com/mtolly/jammittools/blob/master/README.md README>\nfor usage information.";
        buildType = "Simple";
      };
      components = {
        exes = {
          jammittools = {
            depends  = [
              hsPkgs.base
              hsPkgs.property-list
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.process
              hsPkgs.temporary
              hsPkgs.boxes
              hsPkgs.transformers
            ];
          };
        };
      };
    }