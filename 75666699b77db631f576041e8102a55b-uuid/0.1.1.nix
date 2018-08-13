{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "uuid";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Antoine Latter";
      maintainer = "aslatter@gmail.com";
      author = "Antoine Latter";
      homepage = "";
      url = "";
      synopsis = "For creating, comparing, parsing and printing Universally Unique Identifiers";
      description = "Haskell bindings to libuuid.\n\nThe library libuuid is available as a part of e2fsprogs:\n<http://e2fsprogs.sourceforge.net/>.\n\n\nThis library is useful for creating, comparing, parsing and\nprinting Universally Unique Identifiers.\nSee <http://en.wikipedia.org/wiki/UUID> for the general idea.";
      buildType = "Simple";
    };
    components = {
      "uuid" = {
        depends  = [ (hsPkgs.base) ];
        libs = pkgs.lib.optional (!system.isOsx) (pkgs.uuid);
      };
    };
  }