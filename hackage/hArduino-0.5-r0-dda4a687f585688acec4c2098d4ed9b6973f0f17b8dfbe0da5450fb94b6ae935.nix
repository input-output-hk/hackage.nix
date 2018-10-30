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
      specVersion = "1.14";
      identifier = {
        name = "hArduino";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "Levent Erkok, 2013";
      maintainer = "Levent Erkok (erkokl@gmail.com)";
      author = "Levent Erkok";
      homepage = "http://leventerkok.github.com/hArduino";
      url = "";
      synopsis = "Control your Arduino board from Haskell.";
      description = "hArduino library allows Haskell programs to control Arduino boards and\nperipherals, using the Firmata protocol (<http://firmata.org>).\n\nA short (4m29s) video of the blinking example: <http://www.youtube.com/watch?v=PPa3im44t2g>\n\nComments, bug-reports, and patches are welcome.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.serialport)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.unix)
          (hsPkgs.containers)
          (hsPkgs.time)
        ];
      };
    };
  }