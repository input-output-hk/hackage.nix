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
        name = "scotty-cookie";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "macs.martins@gmail.com";
      author = "Mārtiņš Mačs";
      homepage = "https://bitbucket.org/wniare/scotty-cookie";
      url = "";
      synopsis = "Cookie management helper functions for Scotty framework";
      description = "Cookie management helper functions for Scotty framework";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.blaze-builder)
          (hsPkgs.scotty)
          (hsPkgs.cookie)
        ];
      };
    };
  }