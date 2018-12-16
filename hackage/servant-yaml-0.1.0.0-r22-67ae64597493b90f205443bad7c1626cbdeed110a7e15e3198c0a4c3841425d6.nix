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
        name = "servant-yaml";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/haskell-servant/servant-yaml#readme";
      url = "";
      synopsis = "Servant support for yaml";
      description = "Servant support for yaml.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-media)
          (hsPkgs.servant)
          (hsPkgs.yaml)
        ];
      };
      tests = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.http-media)
            (hsPkgs.servant)
            (hsPkgs.yaml)
            (hsPkgs.servant-yaml)
            (hsPkgs.servant-server)
            (hsPkgs.base-compat)
            (hsPkgs.aeson)
            (hsPkgs.wai)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }