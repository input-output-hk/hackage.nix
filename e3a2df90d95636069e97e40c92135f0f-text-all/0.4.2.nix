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
        name = "text-all";
        version = "0.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom";
      homepage = "http://github.com/aelve/text-all";
      url = "";
      synopsis = "Everything Data.Text related in one package";
      description = "Everything @Data.Text@-related in one package.\n\nNote: this package follows PVP.";
      buildType = "Simple";
    };
    components = {
      "text-all" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.text-format)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }