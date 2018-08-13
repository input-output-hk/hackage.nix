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
        name = "pushbullet-types";
        version = "0.4.0.2";
      };
      license = "MIT";
      copyright = "Jacob Thomas Errington 2017-2018";
      maintainer = "pushbullet-hs@mail.jerrington.me";
      author = "Jacob Thomas Errington";
      homepage = "";
      url = "";
      synopsis = "Datatypes used by the Pushbullet APIs";
      description = "";
      buildType = "Simple";
    };
    components = {
      "pushbullet-types" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.http-api-data)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }