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
      specVersion = "0";
      identifier = {
        name = "io-capture";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nonowarn@gmail.com";
      author = "Yusaku Hashimoto";
      homepage = "";
      url = "";
      synopsis = "capture IO action's stdout and stderr";
      description = "capture IO action's stdout and stderr";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.strict)
          (hsPkgs.directory)
        ];
      };
    };
  }