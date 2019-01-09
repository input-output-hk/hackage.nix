{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Vec-Transform"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "Tobias Bexelius";
      maintainer = "Tobias Bexelius";
      author = "Tobias Bexelius";
      homepage = "https://github.com/tobbebex/Vec-Transform";
      url = "";
      synopsis = "This package is obsolete";
      description = "This package is now obsolete since all functions have moved to the Vec package, see <http://hackage.haskell.org/package/Vec>.";
      buildType = "Simple";
      };
    components = { "library" = {}; };
    }