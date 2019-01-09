{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "txtblk"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pharpend2@gmail.com";
      author = "Peter Harpending";
      homepage = "";
      url = "";
      synopsis = "Deprecated in favor of eros.";
      description = "This package is deprecated in favour of\n<https://github.com/pharpend/eros eros>.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }