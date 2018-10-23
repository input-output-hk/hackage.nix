{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "safe-failure-cme";
        version = "0.1.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "2011-12, Jose Iborra";
      maintainer = "pepeiborra@gmail.com";
      author = "Jose Iborra";
      homepage = "";
      url = "";
      synopsis = "control-monad-exception Instances for safe-failure";
      description = "Instances for the encoding of explicitly typed exceptions provided by the control-monad-exception package.";
      buildType = "Simple";
    };
    components = {
      "safe-failure-cme" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.safe-failure)
          (hsPkgs.control-monad-exception)
        ];
      };
    };
  }