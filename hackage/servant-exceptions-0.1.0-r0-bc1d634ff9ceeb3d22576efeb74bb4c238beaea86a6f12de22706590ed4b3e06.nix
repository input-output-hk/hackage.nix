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
        name = "servant-exceptions";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Sebastian Nagel";
      maintainer = "sebastian.nagel@ncoding.at";
      author = "Sebastian Nagel";
      homepage = "https://github.com/ch1bo/servant-exceptions#readme";
      url = "";
      synopsis = "Extensible exceptions for servant APIs";
      description = "";
      buildType = "Simple";
    };
    components = {
      "servant-exceptions" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.text)
          (hsPkgs.wai)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.http-types)
            (hsPkgs.servant-server)
            (hsPkgs.servant-exceptions)
            (hsPkgs.text)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }