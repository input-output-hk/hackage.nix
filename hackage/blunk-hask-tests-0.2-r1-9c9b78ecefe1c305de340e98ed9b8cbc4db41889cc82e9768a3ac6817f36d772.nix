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
      specVersion = "1.2.2";
      identifier = {
        name = "blunk-hask-tests";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "xxx";
      author = "xxx";
      homepage = "";
      url = "";
      synopsis = "spam";
      description = "Spam package";
      buildType = "Simple";
    };
    components = {
      exes = {
        "test1" = {
          depends = [ (hsPkgs.base) ];
        };
      };
    };
  }