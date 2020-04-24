{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "lrucache"; version = "1.1.1.4"; };
      license = "BSD-3-Clause";
      copyright = "Carl Howells, 2010";
      maintainer = "chowells79@gmail.com";
      author = "Carl Howells";
      homepage = "http://github.com/chowells79/lrucache";
      url = "";
      synopsis = "a simple, pure LRU cache";
      description = "This package contains a simple, pure LRU cache, implemented in\nterms of \"Data.Map\".\n\nIt also contains a mutable IO wrapper providing atomic updates to\nan LRU cache.";
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