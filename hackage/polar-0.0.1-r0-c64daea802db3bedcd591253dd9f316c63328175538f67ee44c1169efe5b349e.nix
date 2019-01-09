{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "polar"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Stefan Kersten 2008-2010";
      maintainer = "Stefan Kersten <sk@xdv.org>";
      author = "Stefan Kersten";
      homepage = "http://space.k-hornz.de/polar";
      url = "";
      synopsis = "Complex numbers in polar form";
      description = "Complex numbers in polar form";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }