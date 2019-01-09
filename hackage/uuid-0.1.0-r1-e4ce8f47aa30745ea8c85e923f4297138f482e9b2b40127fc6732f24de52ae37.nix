{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "uuid"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2008, Antoine Latter";
      maintainer = "aslatter@gmail.com";
      author = "Antoine Latter";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Haskell bindings to libuuid.\nThe library libuuid is available as a part of e2fsprogs:\n<http://e2fsprogs.sourceforge.net/>.\nThis library is useful for creating, comparing, parsing and\nprinting Universally Unique Identifiers.\nSee <http://en.wikipedia.org/wiki/UUID> for the general idea.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; libs = [ (pkgs."uuid") ]; };
      };
    }