{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "TrieMap"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wasserman.louis@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "An implementation of generalized tries with sophisticated map type inference.";
      description = "Generalized trie implementation that automatically infers map types.  Keys must implement the class 'TrieMap.Algebraic.Algebraic', which\ndeclares that they are isomorphic to an /algebraic type/,\ndefined recursively as follows:\n\n* () and 'Int' are algebraic types.\n\n* If @'Ord' a@, then @'Ordered' a@ is an algebraic type.\n\n* If @a,b@ are algebraic types, then so are @(a, b)@ and @Either a b@.\n\n* If @a@ is algebraic, so is @[a]@.\n\nThis package exports almost the entire collection of methods available in Data.Map, and several new methods as well.  In addition, each method will automatically infer the correct map type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }