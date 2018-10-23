{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "dywapitchtrack";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "(c) 2015 Lorenzo Tabacchini";
      maintainer = "lortabac@gmx.com";
      author = "Lorenzo Tabacchini";
      homepage = "";
      url = "";
      synopsis = "Bindings to the dywapitchtrack pitch tracking library";
      description = "Bindings to the\n<http://www.schmittmachine.com/dywapitchtrack.html dywapitchtrack>\npitch tracking library by Antoine Schmitt.\n\nThe algorithm is described in a paper by Eric Larson and Ross Maddox:\n<http://courses.physics.illinois.edu/phys406/NSF_REU_Reports/2005_reu/Real-Time_Time-Domain_Pitch_Tracking_Using_Wavelets.pdf Real-Time Time-Domain Pitch Tracking Using Wavelets>.\n\nFor a higher-level interface, use the 'pitchtrack' package.";
      buildType = "Simple";
    };
    components = {
      "dywapitchtrack" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
        ];
      };
    };
  }