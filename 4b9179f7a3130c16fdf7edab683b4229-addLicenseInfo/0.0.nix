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
      specVersion = "0";
      identifier = {
        name = "addLicenseInfo";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jfredett@gmail.com";
      author = "Joe Fredette";
      homepage = "";
      url = "";
      synopsis = "Adds license info to the top of a file.";
      description = "Adds license info to the top of a file.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "addLicenseInfo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
          ];
        };
      };
    };
  }