{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; diff = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hashed-storage"; version = "0.3.5"; };
      license = "BSD-3-Clause";
      copyright = "2009 Petr Rockai <me@mornfall.net>";
      maintainer = "Petr Rockai <me@mornfall.net>";
      author = "Petr Rockai <me@mornfall.net>";
      homepage = "";
      url = "";
      synopsis = "Hashed file storage support code.";
      description = "Support code for reading and manipulating hashed file storage\n(where each file and directory is associated with a\ncryptographic hash, for corruption-resistant storage and fast\ncomparisons).\n\nThe supported storage formats include darcs hashed pristine, a\nplain filesystem tree and an indexed plain tree (where the index\nmaintains hashes of the plain files and directories).";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
          (hsPkgs."mmap" or ((hsPkgs.pkgs-errors).buildDepError "mmap"))
          ] ++ (pkgs.lib).optional (flags.diff) (hsPkgs."lcs" or ((hsPkgs.pkgs-errors).buildDepError "lcs"));
        buildable = true;
        };
      exes = {
        "hashed-storage-test" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."zip-archive" or ((hsPkgs.pkgs-errors).buildDepError "zip-archive"))
            ];
          buildable = if flags.test then true else false;
          };
        };
      };
    }