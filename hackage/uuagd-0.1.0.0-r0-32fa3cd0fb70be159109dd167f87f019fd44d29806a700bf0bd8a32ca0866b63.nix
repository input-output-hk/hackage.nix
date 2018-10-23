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
        name = "uuagd";
        version = "0.1.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Matthijs Steen <matthijssteen1990@gmail.com>";
      author = "Matthijs Steen <matthijssteen1990@gmail.com>";
      homepage = "https://github.com/matthijssteen/uuagd";
      url = "";
      synopsis = "A debugger for the UUAG system.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "uuagd" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.blaze-html)
          (hsPkgs.hamlet)
        ];
      };
      exes = {
        "uuagd" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
          ];
        };
      };
    };
  }