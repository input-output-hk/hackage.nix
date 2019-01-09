{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "wai-middleware-catch"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aka.spin@gmail.com";
      author = "Alexander Dorofeev";
      homepage = "https://github.com/akaspin/wai-middleware-catch";
      url = "";
      synopsis = "Wai error catching middleware";
      description = "Error handling middleware for 'Wai'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.lifted-base)
          (hsPkgs.http-types)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          ];
        };
      };
    }