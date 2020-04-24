{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rocksdb-query"; version = "0.2.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "No Rights Reserved";
      maintainer = "xenog@protonmail.com";
      author = "Jean-Pierre Rupp";
      homepage = "https://github.com/xenog/rocksdb-query#readme";
      url = "";
      synopsis = "RocksDB database querying library for Haskell";
      description = "Please see the README on GitHub at <https://github.com/xenog/rocksdb-query#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."rocksdb-haskell" or ((hsPkgs.pkgs-errors).buildDepError "rocksdb-haskell"))
          (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
          ];
        buildable = true;
        };
      tests = {
        "rocksdb-query-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."rocksdb-haskell" or ((hsPkgs.pkgs-errors).buildDepError "rocksdb-haskell"))
            (hsPkgs."rocksdb-query" or ((hsPkgs.pkgs-errors).buildDepError "rocksdb-query"))
            (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
            ];
          buildable = true;
          };
        };
      };
    }