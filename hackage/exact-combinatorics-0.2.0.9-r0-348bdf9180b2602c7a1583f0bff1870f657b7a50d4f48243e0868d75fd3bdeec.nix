{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "exact-combinatorics"; version = "0.2.0.9"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011--2019 wren gayle romano";
      maintainer = "wren@cpan.org";
      author = "wren gayle romano";
      homepage = "https://wrengr.org/";
      url = "";
      synopsis = "Efficient exact computation of combinatoric functions.";
      description = "Efficient exact computation of combinatoric functions.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }