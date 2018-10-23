{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "digestive-functors-scotty";
        version = "0.2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "macs.martins@gmail.com";
      author = "Mārtiņš Mačs";
      homepage = "https://github.com/mmartin/digestive-functors-scotty";
      url = "";
      synopsis = "Scotty backend for the digestive-functors library";
      description = "Scotty backend for the digestive-functors library";
      buildType = "Simple";
    };
    components = {
      "digestive-functors-scotty" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.digestive-functors)
          (hsPkgs.scotty)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
        ];
      };
    };
  }