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
      specVersion = "1.10";
      identifier = {
        name = "horizon";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "intractable@gmail.com";
      author = "Joel Stanley";
      homepage = "https://github.com/intractable/horizon";
      url = "http://hackage.haskell.org/package/horizon";
      synopsis = "Sunrise and sunset UTC approximations from latitude and longitude coordinates";
      description = "Provides a basic implementation of the sunrise and sunset equations from <https://en.wikipedia.org/wiki/Sunrise_equation this wikipedia page>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.AC-Angle)
        ];
      };
    };
  }