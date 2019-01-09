{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { wiimote = true; kinect = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "haskanoid"; version = "0.1.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez and Henrik Nilsson";
      homepage = "http://github.com/ivanperez-keera/haskanoid";
      url = "";
      synopsis = "A breakout game written in Yampa using SDL";
      description = "An arkanoid game featuring SDL graphics and sound, and\nWiimote & Kinect support, implemented using Yampa.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskanoid" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.MissingH)
            (hsPkgs.Yampa)
            (hsPkgs.SDL)
            (hsPkgs.SDL-image)
            (hsPkgs.SDL-mixer)
            (hsPkgs.SDL-ttf)
            (hsPkgs.IfElse)
            ] ++ (pkgs.lib).optional (flags.wiimote) (hsPkgs.hcwiid)) ++ (pkgs.lib).optionals (flags.kinect) [
            (hsPkgs.freenect)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }