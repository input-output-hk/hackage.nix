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
        name = "fmt";
        version = "0.0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom";
      homepage = "http://github.com/aelve/fmt";
      url = "";
      synopsis = "Nice formatting library";
      description = "Nice formatting library";
      buildType = "Simple";
    };
    components = {
      "fmt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.microlens)
          (hsPkgs.text)
          (hsPkgs.text-format)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.fmt)
            (hsPkgs.hspec)
            (hsPkgs.neat-interpolation)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }