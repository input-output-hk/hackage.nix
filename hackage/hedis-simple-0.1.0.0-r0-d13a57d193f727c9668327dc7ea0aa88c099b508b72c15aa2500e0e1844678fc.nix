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
      specVersion = "1.8";
      identifier = {
        name = "hedis-simple";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "http://github.com/sanetracker/hedis-simple";
      url = "";
      synopsis = "A simplified API for hedis";
      description = "hedis-simple wraps most hedis commands in an EitherT monad to simplify a lot of the verbose error checking that one would normally have to perform.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.either)
          (hsPkgs.bytestring)
          (hsPkgs.hedis)
        ];
      };
    };
  }