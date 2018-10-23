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
        name = "blunt";
        version = "0.0.14";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak <taylor@fausak.me>";
      author = "";
      homepage = "https://blunt.herokuapp.com";
      url = "";
      synopsis = "Point-free Haskell as a service.";
      description = "<https://github.com/tfausak/blunt>";
      buildType = "Simple";
    };
    components = {
      "blunt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.clay)
          (hsPkgs.http-types)
          (hsPkgs.jmacro)
          (hsPkgs.lucid)
          (hsPkgs.pointful)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.warp)
          (hsPkgs.wl-pprint-text)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "blunt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blunt)
          ];
        };
      };
    };
  }