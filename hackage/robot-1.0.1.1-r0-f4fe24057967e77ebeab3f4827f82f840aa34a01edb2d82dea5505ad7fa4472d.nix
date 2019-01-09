{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "robot"; version = "1.0.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "lambda.fairy@gmail.com";
      author = "Chris Wong";
      homepage = "https://github.com/lfairy/robot";
      url = "";
      synopsis = "Simulate keyboard and mouse events";
      description = "Generate native keyboard and mouse events. Using this library,\napplications will respond as if the user performed the action\nthemselves.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.xhb)
          ];
        };
      };
    }