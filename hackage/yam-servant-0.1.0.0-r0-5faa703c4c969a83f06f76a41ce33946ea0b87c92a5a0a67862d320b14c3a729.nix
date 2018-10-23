{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yam-servant";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Daniel YU";
      maintainer = "i@icymint.me";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/yam-servant#readme";
      url = "";
      synopsis = "";
      description = "Web Module for Yam";
      buildType = "Simple";
    };
    components = {
      "yam-servant" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yam-app)
          (hsPkgs.yam-job)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.servant-swagger)
          (hsPkgs.servant-swagger-ui)
          (hsPkgs.swagger2)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.warp)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          (hsPkgs.data-default)
        ];
      };
    };
  }