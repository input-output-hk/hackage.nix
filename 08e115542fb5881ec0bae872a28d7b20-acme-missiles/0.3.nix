{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "acme-missiles";
        version = "0.3";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "joeyadams3.14159@gmail.com";
      author = "Joey Adams";
      homepage = "";
      url = "";
      synopsis = "Cause serious international side effects.";
      description = "The highly effectful 'launchMissiles' action, as mentioned in /Beautiful concurrency/,\nSimon Peyton Jones, 2007.";
      buildType = "Simple";
    };
    components = {
      "acme-missiles" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
        ];
      };
    };
  }