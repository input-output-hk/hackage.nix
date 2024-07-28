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
}