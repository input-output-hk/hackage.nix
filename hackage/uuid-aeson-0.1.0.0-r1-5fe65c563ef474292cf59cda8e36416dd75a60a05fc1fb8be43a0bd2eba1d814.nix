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
        name = "uuid-aeson";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "necrobious@gmail.com";
      author = "Kirk Peterson";
      homepage = "";
      url = "";
      synopsis = "Aeson types for UUID instances.";
      description = "Instances of Aeson's 'ToJSON' and 'FromJSON' for 'UUID's.\n\nNOTE: Starting with @aeson-1.1@, 'ToJSON' and 'FromJSON' non-orphan instances are provided by @aeson@ directly.";
      buildType = "Simple";
    };
    components = {
      "uuid-aeson" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.uuid)
        ];
      };
    };
  }