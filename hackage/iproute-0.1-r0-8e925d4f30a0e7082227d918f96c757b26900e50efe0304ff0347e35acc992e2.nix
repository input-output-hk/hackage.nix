{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "iproute"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@Mew.org>";
      author = "Kazu Yamamoto <kazu@Mew.org>";
      homepage = "http://www.mew.org/~kazu/proj/iproute/";
      url = "";
      synopsis = "IP Routing Table";
      description = "IP Routing Table is a tree of IP ranges\nto search one of them on the longest\nmatch base. It is a kind of TRIE with one\nway branching removed. Both IPv4 and IPv6\nare supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }