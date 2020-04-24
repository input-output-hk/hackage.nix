{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "generic-trie"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "emertens@gmail.com";
      author = "Eric Mertens";
      homepage = "http://github.com/glguy/tries";
      url = "";
      synopsis = "A map, where the keys may be complex structured data.";
      description = "This type implements maps where the keys are themselves\ncomplex structured data.  For example, the keys may be\nthe abstract syntax trees for a programming language.\nThe map is implemented as a trie, so common parts of the\nkeys will be shared in the representation.  The library\nprovides a generic implementation of the data structure,\nso values of types that have support for 'Generic' may\nbe automatically used as keys in the map.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }