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
        name = "wai-middleware-json-errors";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Orbital Labs";
      maintainer = "seanhess@gmail.com";
      author = "Sean Hess";
      homepage = "https://github.com/orbital/wai-middleware-json-errors#readme";
      url = "";
      synopsis = "Converts errors from plaintext to json";
      description = "Converts errors from plaintext to json";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.base)
        ];
      };
      tests = {
        "wai-middleware-json-errors-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.http-types)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.base)
            (hsPkgs.wai-middleware-json-errors)
          ];
        };
      };
    };
  }