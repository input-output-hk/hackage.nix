{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "bv-embed"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "benselfridge@galois.com";
      author = "Ben Selfridge";
      homepage = "";
      url = "";
      synopsis = "Define embeddings of small bit vectors into larger ones";
      description = "Data structures for defining embeddings of small bit vectors\ninto larger ones. Functions that perform the embedding and\nextracting.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }