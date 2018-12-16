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
      specVersion = "1.10";
      identifier = {
        name = "blunt";
        version = "0.0.17";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.clay)
          (hsPkgs.flow)
          (hsPkgs.http-types)
          (hsPkgs.jmacro)
          (hsPkgs.lucid)
          (hsPkgs.pointfree)
          (hsPkgs.pointful)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-websockets)
          (hsPkgs.warp)
          (hsPkgs.websockets)
          (hsPkgs.wl-pprint-text)
        ];
      };
      exes = {
        "blunt" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blunt)
          ];
        };
      };
    };
  }