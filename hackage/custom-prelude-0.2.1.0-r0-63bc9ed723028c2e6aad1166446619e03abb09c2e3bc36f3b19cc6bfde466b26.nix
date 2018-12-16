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
        name = "custom-prelude";
        version = "0.2.1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ajnsit@gmail.com";
      author = "Anupam Jain";
      homepage = "https://github.com/ajnsit/custom-prelude";
      url = "";
      synopsis = "My own custom prelude, based off Snoyman's basic-prelude";
      description = "My own custom prelude, based off Snoyman's basic-prelude";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.basic-prelude)
        ];
      };
    };
  }