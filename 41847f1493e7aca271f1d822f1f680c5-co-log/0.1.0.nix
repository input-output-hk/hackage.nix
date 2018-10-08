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
      specVersion = "2.0";
      identifier = {
        name = "co-log";
        version = "0.1.0";
      };
      license = "MPL-2.0";
      copyright = "2018 Kowainik";
      maintainer = "xrom.xkov@gmail.com";
      author = "Kowainik";
      homepage = "https://github.com/kowainik/co-log";
      url = "";
      synopsis = "Logging library";
      description = "Logging library";
      buildType = "Simple";
    };
    components = {
      "co-log" = {
        depends  = [
          (hsPkgs.base-noprelude)
          (hsPkgs.ansi-terminal)
          (hsPkgs.bytestring)
          (hsPkgs.co-log-core)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.mtl)
          (hsPkgs.relude)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.typerep-map)
        ];
      };
      exes = {
        "play-colog" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.co-log)
            (hsPkgs.relude)
            (hsPkgs.typerep-map)
          ];
        };
        "readme" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.co-log)
            (hsPkgs.text)
          ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit)
          ];
        };
      };
    };
  }