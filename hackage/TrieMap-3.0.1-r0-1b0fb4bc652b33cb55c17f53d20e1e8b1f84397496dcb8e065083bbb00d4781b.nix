{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "TrieMap"; version = "3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wasserman.louis@gmail.com";
      author = "Louis Wasserman";
      homepage = "";
      url = "";
      synopsis = "Automatic type inference of generalized tries with Template Haskell.";
      description = "Provides a efficient and compact implementation of generalized tries, and Template Haskell tools to generate\nthe necessary translation code.  This is meant as a drop-in replacement for Data.Map.\nThe most recent release combines zipper-based ideas from recently proposed changes to Data.Map, as well\nas heavily optimized ByteString and Vector instances based on the vector package.\nSince version 2, unit tests and benchmarks have been taken much more seriously, and major optimizations\nhave been made.\nCompared to Data.Map and Data.Set, on e.g. @ByteString@s, TrieMaps support 6-12x faster @union@,\n@intersection@, and @difference@ operations, 2x faster @lookup@, but 2x slower @toList@, and 4x slower @filter@.\nOther operations are closely tied.  TrieMaps tend to use somewhat more memory, and frequently perform better\nwith increased heap space and allocation area.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."th-expand-syns" or ((hsPkgs.pkgs-errors).buildDepError "th-expand-syns"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          ];
        buildable = true;
        };
      };
    }