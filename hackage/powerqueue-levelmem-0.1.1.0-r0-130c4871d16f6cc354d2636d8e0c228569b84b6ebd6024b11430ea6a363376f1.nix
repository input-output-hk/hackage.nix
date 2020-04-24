{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "powerqueue-levelmem"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/powerqueue#readme";
      url = "";
      synopsis = "A high performance in memory and LevelDB backend for powerqueue";
      description = "A high performance in memory and LevelDB backend for powerqueue";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."powerqueue" or ((hsPkgs.pkgs-errors).buildDepError "powerqueue"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."stm-containers" or ((hsPkgs.pkgs-errors).buildDepError "stm-containers"))
          (hsPkgs."unagi-chan" or ((hsPkgs.pkgs-errors).buildDepError "unagi-chan"))
          (hsPkgs."focus" or ((hsPkgs.pkgs-errors).buildDepError "focus"))
          (hsPkgs."leveldb-haskell" or ((hsPkgs.pkgs-errors).buildDepError "leveldb-haskell"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."list-t" or ((hsPkgs.pkgs-errors).buildDepError "list-t"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."timespan" or ((hsPkgs.pkgs-errors).buildDepError "timespan"))
          ];
        buildable = true;
        };
      tests = {
        "powerqueue-levelmem-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."powerqueue-levelmem" or ((hsPkgs.pkgs-errors).buildDepError "powerqueue-levelmem"))
            (hsPkgs."powerqueue" or ((hsPkgs.pkgs-errors).buildDepError "powerqueue"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            ];
          libs = [
            (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
            (pkgs."leveldb" or ((hsPkgs.pkgs-errors).sysDepError "leveldb"))
            (pkgs."snappy" or ((hsPkgs.pkgs-errors).sysDepError "snappy"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "powerqueue-levelmem-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."powerqueue" or ((hsPkgs.pkgs-errors).buildDepError "powerqueue"))
            (hsPkgs."powerqueue-levelmem" or ((hsPkgs.pkgs-errors).buildDepError "powerqueue-levelmem"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            ];
          libs = [
            (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
            (pkgs."leveldb" or ((hsPkgs.pkgs-errors).sysDepError "leveldb"))
            (pkgs."snappy" or ((hsPkgs.pkgs-errors).sysDepError "snappy"))
            ];
          buildable = true;
          };
        };
      };
    }