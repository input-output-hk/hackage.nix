{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "log-effect"; version = "0.3.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "tob@butter.sh";
      author = "Tobias Florek";
      homepage = "https://github.com/ibotty/log-effect";
      url = "";
      synopsis = "An extensible log effect using extensible-effects";
      description = "Any help (especially documentation) is very welcome,";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.extensible-effects)
          (hsPkgs.fast-logger)
          (hsPkgs.time)
          ];
        };
      };
    }