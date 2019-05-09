{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "newtype"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel, Darius Jahandarie, Conor McBride";
      homepage = "";
      url = "";
      synopsis = "A typeclass and set of functions for working with newtypes.";
      description = "Per Conor McBride, the 'Newtype' typeclass represents the packing and unpacking of a @newtype@, and allows you to operate under that @newtype@ with functions such as 'ala'. See \"Control.Newtype\" for documentation and examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.transformers);
        };
      };
    }