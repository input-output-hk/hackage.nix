{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "iproute";
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "http://www.mew.org/~kazu/proj/iproute/";
      url = "";
      synopsis = "IP Routing Table";
      description = "IP Routing Table is a tree of IP ranges\nto search one of them on the longest\nmatch base. It is a kind of TRIE with one\nway branching removed. Both IPv4 and IPv6\nare supported.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.appar)
          (hsPkgs.containers)
        ];
      };
    };
  }