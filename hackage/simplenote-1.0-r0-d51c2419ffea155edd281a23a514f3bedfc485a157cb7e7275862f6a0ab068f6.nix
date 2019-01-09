{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "simplenote"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 marius a. eriksen";
      maintainer = "marius a. eriksen";
      author = "marius a. eriksen";
      homepage = "";
      url = "";
      synopsis = "Haskell interface for the simplenote API.";
      description = "Provides a simple Haskell API to the simplenote web\nservices.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.json)
          (hsPkgs.curl)
          (hsPkgs.download-curl)
          (hsPkgs.dataenc)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.HTTP)
          ];
        };
      };
    }