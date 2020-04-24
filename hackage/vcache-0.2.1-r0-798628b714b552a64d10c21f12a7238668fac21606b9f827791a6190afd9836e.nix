{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16.0.3";
      identifier = { name = "vcache"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 by David Barbour";
      maintainer = "dmbarbour@gmail.com";
      author = "David Barbour";
      homepage = "http://github.com/dmbarbour/haskell-vcache";
      url = "";
      synopsis = "large, persistent, memcached values and structure sharing for Haskell";
      description = "VCache provides a nearly-transparent persistent memory for Haskell\nwith transactional variables, persistent roots, and large structured\nvalues. The virtual space is a memory-mapped file via LMDB, with\nstructure sharing and incremental GC.\n\nVCache is very similar to packages acid-state, perdure, and TCache.\nVCache is intended as an acid-state alternative, offering flexibility\nto model fine-grained variables or extremely large values.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."direct-murmur-hash" or ((hsPkgs.pkgs-errors).buildDepError "direct-murmur-hash"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."lmdb" or ((hsPkgs.pkgs-errors).buildDepError "lmdb"))
          (hsPkgs."filelock" or ((hsPkgs.pkgs-errors).buildDepError "filelock"))
          (hsPkgs."easy-file" or ((hsPkgs.pkgs-errors).buildDepError "easy-file"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }