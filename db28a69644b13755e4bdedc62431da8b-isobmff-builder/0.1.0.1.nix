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
        name = "isobmff-builder";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Sven Heyll";
      maintainer = "sven.heyll@gmail.com";
      author = "Sven Heyll";
      homepage = "https://github.com/sheyll/isobmff-builder#readme";
      url = "";
      synopsis = "A (bytestring-) builder for the ISO base media file format ISO-14496-12";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "isobmff-builder" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.type-list)
        ];
      };
    };
  }