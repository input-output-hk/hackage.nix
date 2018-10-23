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
        name = "autoexporter";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Automatically re-export modules.";
      description = "Autoexporter automatically re-exports modules.";
      buildType = "Simple";
    };
    components = {
      "autoexporter" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "autoexporter" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.autoexporter)
          ];
        };
      };
    };
  }