{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "queuelike"; version = "1.0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wasserman.louis@gmail.com";
      author = "Louis Wasserman";
      homepage = "";
      url = "";
      synopsis = "A library of queuelike data structures, both functional and stateful.";
      description = "Contains several implementations of data structures implementing a /single-in, single-out/ paradigm.  Intended to be a better, more useful replacement for pqueue-mtl.\nIn particular, includes an experimental and possibly genuinely new trie-based priority queue on strings.  Feedback is appreciated.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."stateful-mtl" or ((hsPkgs.pkgs-errors).buildDepError "stateful-mtl"))
          ];
        buildable = true;
        };
      };
    }