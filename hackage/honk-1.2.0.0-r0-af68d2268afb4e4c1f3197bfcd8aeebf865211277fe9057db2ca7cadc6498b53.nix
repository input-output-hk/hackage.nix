{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "honk";
        version = "1.2.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "lambda.fairy@gmail.com";
      author = "Chris Wong";
      homepage = "http://lfairy.github.io/honk/";
      url = "";
      synopsis = "Cross-platform interface to the PC speaker.";
      description = "A unified, cross-platform interface to the PC speaker.\n\nBeep to your heart's content!";
      buildType = "Simple";
    };
    components = {
      "honk" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }