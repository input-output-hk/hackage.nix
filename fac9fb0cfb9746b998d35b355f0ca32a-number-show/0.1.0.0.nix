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
        name = "number-show";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) jsagemue \$ uni-koeln.de";
      author = "Justus Sagemüller";
      homepage = "";
      url = "";
      synopsis = "Flexible and accurate (for a given precision) numerical->string conversion";
      description = "";
      buildType = "Simple";
    };
    components = {
      "number-show" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
        ];
      };
    };
  }