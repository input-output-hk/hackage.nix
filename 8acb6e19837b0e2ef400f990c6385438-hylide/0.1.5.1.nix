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
      specVersion = "1.10";
      identifier = {
        name = "hylide";
        version = "0.1.5.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "freshdried@gmail.com";
      author = "Sean Lee";
      homepage = "https://github.com/sleexyz/hylogen";
      url = "";
      synopsis = "WebGL live-coding environment for writing shaders with Hylogen";
      description = "WebGL live-coding environment for writing shaders with Hylogen";
      buildType = "Simple";
    };
    components = {
      "hylide" = {
        depends  = [
          (hsPkgs.hylogen)
          (hsPkgs.base)
          (hsPkgs.vector-space)
        ];
      };
      exes = {
        "hylide" = {
          depends  = [
            (hsPkgs.hylogen)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.fsnotify)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.websockets)
            (hsPkgs.aeson)
            (hsPkgs.hint)
            (hsPkgs.hylide)
            (hsPkgs.wai)
            (hsPkgs.http-types)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }