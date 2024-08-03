{
  "0.0.0.0" = {
    sha256 = "134a64fae0cda8cc818f52b0b773c730c59ee01268562fb9c0128a9a78125135";
    revisions = {
      r0 = {
        nix = import ../hackage/xnobar-0.0.0.0-r0-46fd390fd8d8e7e34cdb8aa1af763559b1f54f59039826ccef027a8692723a6d.nix;
        revNum = 0;
        sha256 = "46fd390fd8d8e7e34cdb8aa1af763559b1f54f59039826ccef027a8692723a6d";
      };
      r1 = {
        nix = import ../hackage/xnobar-0.0.0.0-r1-212ada78d54fdcbdd5d77a766dd0670325bd26df61c20397843461b5261146d1.nix;
        revNum = 1;
        sha256 = "212ada78d54fdcbdd5d77a766dd0670325bd26df61c20397843461b5261146d1";
      };
      default = "r1";
    };
  };
  "0.0.0.1" = {
    sha256 = "3f94bff249a0ce1d7c35bf7ca51f71428928fc0e67977b7ed065bf186c6e4996";
    revisions = {
      r0 = {
        nix = import ../hackage/xnobar-0.0.0.1-r0-4348be937ff664e5c7764996da89e333dabe3fd5ea9504c15c7234f03f7864fd.nix;
        revNum = 0;
        sha256 = "4348be937ff664e5c7764996da89e333dabe3fd5ea9504c15c7234f03f7864fd";
      };
      r1 = {
        nix = import ../hackage/xnobar-0.0.0.1-r1-284cf63b7b8b63659c2f333174190677c3c541d60e2b736baa898135c6a7c319.nix;
        revNum = 1;
        sha256 = "284cf63b7b8b63659c2f333174190677c3c541d60e2b736baa898135c6a7c319";
      };
      default = "r1";
    };
  };
}