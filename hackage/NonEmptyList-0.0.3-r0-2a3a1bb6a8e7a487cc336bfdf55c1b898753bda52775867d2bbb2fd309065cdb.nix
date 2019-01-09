{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "NonEmptyList"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2010 Tony Morris, Oliver Taylor";
      maintainer = "code@tmorris.net";
      author = "Tony Morris, Oliver Taylor, Eelis van der Weegen";
      homepage = "http://code.google.com/p/nonempty/";
      url = "";
      synopsis = "A list with a length of at least one.";
      description = "A list with a length of at least one and type-safe head/tail operations.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.QuickCheck) ]; };
      };
    }