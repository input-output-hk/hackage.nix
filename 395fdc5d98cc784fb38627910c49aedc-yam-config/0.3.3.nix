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
        name = "yam-config";
        version = "0.3.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "";
      homepage = "https://github.com/leptonyu/yam#readme";
      url = "";
      synopsis = "Yam Configuation";
      description = "Configuation Loader Module for yam";
      buildType = "Simple";
    };
    components = {
      "yam-config" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.random)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vault)
          (hsPkgs.yaml)
        ];
      };
    };
  }