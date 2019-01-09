{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hit-graph"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://hub.darcs.net/fr33domlover/hit-graph";
      url = "";
      synopsis = "Use graph algorithms to access and manipulate Git repos";
      description = "This library contains utilities for loading Git repo data into a graph, and\nusing graph algorithms to extract useful information, and perhaps even modify\nthe repo in interesting ways.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.fgl)
          (hsPkgs.hashable)
          (hsPkgs.hit)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          ];
        };
      };
    }