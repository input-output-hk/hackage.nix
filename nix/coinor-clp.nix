{
  "0.0" = {
    sha256 = "d6cde129e3dfc84db1f3c255681aa03e4e2b12289c4772f4cc17d8f1880bd1f1";
    revisions = {
      r0 = {
        nix = import ../hackage/coinor-clp-0.0-r0-9fe50dd52b00001354de13942e099c990a98a306e754fd0032733a29288083d7.nix;
        revNum = 0;
        sha256 = "9fe50dd52b00001354de13942e099c990a98a306e754fd0032733a29288083d7";
      };
      default = "r0";
    };
  };
  "0.0.0.1" = {
    sha256 = "6ad938a8ef9d1da664964b0fdc83def9a04f5d80906c68d9839fbfe5c0aa590a";
    revisions = {
      r0 = {
        nix = import ../hackage/coinor-clp-0.0.0.1-r0-84ebe303d4793a4c01f58078ddb03bab5e7e91015d59cd45a36312660fa682c3.nix;
        revNum = 0;
        sha256 = "84ebe303d4793a4c01f58078ddb03bab5e7e91015d59cd45a36312660fa682c3";
      };
      default = "r0";
    };
  };
  "0.0.0.2" = {
    sha256 = "6258dd76360cfb5274aecedd653aeaa197b3a4f58ecf7dac453ab9aaebbf9c2d";
    revisions = {
      r0 = {
        nix = import ../hackage/coinor-clp-0.0.0.2-r0-331804e9e0ba8c22ea40565632e7ab74377d44dd48f72850806d8e673eaac07d.nix;
        revNum = 0;
        sha256 = "331804e9e0ba8c22ea40565632e7ab74377d44dd48f72850806d8e673eaac07d";
      };
      r1 = {
        nix = import ../hackage/coinor-clp-0.0.0.2-r1-22e69069071841f79ca959042b26f132b9ee7acbf40d3c841822ccf062583604.nix;
        revNum = 1;
        sha256 = "22e69069071841f79ca959042b26f132b9ee7acbf40d3c841822ccf062583604";
      };
      r2 = {
        nix = import ../hackage/coinor-clp-0.0.0.2-r2-1247aaf14cf826236923a8c3d2692830a56a9fa1ce00d36da59e57bb8fe536ce.nix;
        revNum = 2;
        sha256 = "1247aaf14cf826236923a8c3d2692830a56a9fa1ce00d36da59e57bb8fe536ce";
      };
      default = "r2";
    };
  };
}