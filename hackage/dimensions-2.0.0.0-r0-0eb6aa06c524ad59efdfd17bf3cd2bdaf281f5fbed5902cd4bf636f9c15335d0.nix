{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { unsafeindices = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "dimensions"; version = "2.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019 Artem Chirkin";
      maintainer = "achirkin@users.noreply.github.com";
      author = "Artem Chirkin";
      homepage = "https://github.com/achirkin/easytensor#readme";
      url = "";
      synopsis = "Safe type-level dimensionality for multidimensional data.";
      description = "Safe type-level dimensionality for multidimensional data. Please see the README on GitHub at <https://github.com/achirkin/easytensor#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.constraints-deriving) (hsPkgs.ghc) ];
        };
      tests = {
        "dimensions-test" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.constraints-deriving)
            (hsPkgs.dimensions)
            ];
          };
        };
      };
    }