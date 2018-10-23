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
        name = "hylogen";
        version = "0.1.0.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "freshdried@gmail.com";
      author = "Sean Lee";
      homepage = "https://github.com/sleexyz/hylogen";
      url = "";
      synopsis = "a tiny EDSL for live-coding fragment shaders";
      description = "a tiny EDSL for live-coding fragment shaders";
      buildType = "Simple";
    };
    components = {
      "hylogen" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "hylogen" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.hinotify)
            (hsPkgs.network)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.websockets)
          ];
        };
      };
    };
  }