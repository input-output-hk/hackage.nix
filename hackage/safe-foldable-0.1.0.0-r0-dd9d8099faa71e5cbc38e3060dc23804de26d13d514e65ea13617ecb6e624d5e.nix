{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "safe-foldable"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Theodore Lief Gannon";
      maintainer = "tanuki@gmail.com";
      author = "Theodore Lief Gannon";
      homepage = "https://github.com/tejon/safe-foldable#readme";
      url = "";
      synopsis = "Safe wrappers for null-partial Foldable operations";
      description = "";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }