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
      specVersion = "1.8";
      identifier = {
        name = "wai-middleware-catch";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aka.spin@gmail.com";
      author = "Alexander Dorofeev";
      homepage = "https://github.com/akaspin/wai-middleware-catch";
      url = "";
      synopsis = "Wai error catching middleware";
      description = "Error handling middleware for 'Wai'.\n/Note/: This package uses ideas fron not released package\n/enumerator-exception/\n(<https://github.com/snoyberg/enumerator-exception>)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.enumerator)
          (hsPkgs.monad-control)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          (hsPkgs.warp)
        ];
      };
    };
  }