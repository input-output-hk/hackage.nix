{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "digits"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Henry Bucklow";
      maintainer = "henry@elsie.org.uk";
      author = "Henry Bucklow";
      homepage = "";
      url = "";
      synopsis = "Converts integers to lists of digits and back.";
      description = "Converts integers to lists of digits and back.";
      buildType = "Custom";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.QuickCheck) ]; };
      };
    }