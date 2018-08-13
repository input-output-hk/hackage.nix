{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "jammittools";
        version = "0.3";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "miketolly@gmail.com";
      author = "Michael Tolly";
      homepage = "https://github.com/mtolly/jammittools";
      url = "";
      synopsis = "Export sheet music and audio from Windows/Mac app Jammit";
      description = "<http://www.jammit.com/ Jammit> is a service and associated app for Windows\\/Mac\\/iOS that sells isolated instrument audio tracks from popular music, along with full transcriptions.\nThis is a library and executable that allow you to export the sheet music (in PDF format) and audio (in WAV format) to tracks that you have purchased.\n\nAny sheet music or audio you export is solely for your own use, e.g. for use on Linux and Android devices that do not have the official app available.\nPlease do not use this tool to share content with others who have not purchased it!\n\nYou must install ImageMagick and Sox for sheet music and audio export respectively, because they are used to do the actual conversion.\nPlease see the <https://github.com/mtolly/jammittools/blob/master/README.md README> for usage information.";
      buildType = "Simple";
    };
    components = {
      "jammittools" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.property-list)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.temporary)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "jammittools" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.boxes)
            (hsPkgs.jammittools)
          ];
        };
      };
    };
  }