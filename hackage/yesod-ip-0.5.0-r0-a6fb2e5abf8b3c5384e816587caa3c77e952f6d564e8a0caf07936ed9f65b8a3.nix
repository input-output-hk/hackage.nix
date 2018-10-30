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
        name = "yesod-ip";
        version = "0.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/yesod-ip#readme";
      url = "";
      synopsis = "Code for using the ip package with yesod";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-form)
          (hsPkgs.persistent)
          (hsPkgs.path-pieces)
          (hsPkgs.http-api-data)
          (hsPkgs.ip)
        ];
      };
    };
  }