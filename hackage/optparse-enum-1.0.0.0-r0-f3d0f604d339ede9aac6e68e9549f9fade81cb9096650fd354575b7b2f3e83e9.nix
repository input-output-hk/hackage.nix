{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "optparse-enum"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Chris Dornan";
      maintainer = "chris@chrisdornan.com";
      author = "Chris Dornan";
      homepage = "https://github.com/cdornan/optparse-enum#readme";
      url = "";
      synopsis = "An enum-text based toolkit for optparse-applicative";
      description = "Please see the README on GitHub at <https://github.com/cdornan/optparse-enum#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.enum-text)
          (hsPkgs.fmt)
          (hsPkgs.optparse-applicative)
          (hsPkgs.text)
          ];
        };
      };
    }