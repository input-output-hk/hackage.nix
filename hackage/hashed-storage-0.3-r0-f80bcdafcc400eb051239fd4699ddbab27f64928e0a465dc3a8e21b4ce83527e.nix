{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hashed-storage"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "2009 Petr Rockai <me@mornfall.net>";
      maintainer = "Petr Rockai <me@mornfall.net>";
      author = "Petr Rockai <me@mornfall.net>";
      homepage = "";
      url = "";
      synopsis = "Hashed file storage support code.";
      description = "Support code for reading and manipulating hashed file storage (where each\nfile and directory is associated with a cryptographic hash, for\ncorruption-resistant storage and fast comparisons).\n\nThe supported storage formats include darcs hashed pristine, a plain\nfilesystem tree and an indexed plain tree (where the index maintains hashes\nof the plain files and directories).";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-mmap" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-mmap"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          (hsPkgs."lcs" or ((hsPkgs.pkgs-errors).buildDepError "lcs"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
          (hsPkgs."mmap" or ((hsPkgs.pkgs-errors).buildDepError "mmap"))
          ];
        buildable = true;
        };
      exes = {
        "hashed-storage-test" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }