{
  "0.0.1" = {
    sha256 = "36a83e25f223162ea82e3e88c14e713a0bfce6e0b8f6f83fa28b7e096377a8f6";
    revisions = {
      r0 = {
        nix = import ../hackage/netcode-io-0.0.1-r0-fb98a445c0b8d4933b20f0a21a08a63a79b5d3fa6e0d236260f81ae32bf9b6ff.nix;
        revNum = 0;
        sha256 = "fb98a445c0b8d4933b20f0a21a08a63a79b5d3fa6e0d236260f81ae32bf9b6ff";
      };
      r1 = {
        nix = import ../hackage/netcode-io-0.0.1-r1-0e7f7aa287e30f06cb98005948b437f625d74a318d0d8907c872526e098499f7.nix;
        revNum = 1;
        sha256 = "0e7f7aa287e30f06cb98005948b437f625d74a318d0d8907c872526e098499f7";
      };
      default = "r1";
    };
  };
  "0.0.2" = {
    sha256 = "445fc993ae65ae909f251adb66201563fba26dcf14af1fc9d750d2dd59f2c658";
    revisions = {
      r0 = {
        nix = import ../hackage/netcode-io-0.0.2-r0-f138ed244ab56e7defc8c5100cdb9d49ca015c6c71442420c143a8f4b7deaf45.nix;
        revNum = 0;
        sha256 = "f138ed244ab56e7defc8c5100cdb9d49ca015c6c71442420c143a8f4b7deaf45";
      };
      default = "r0";
    };
  };
  "0.0.3" = {
    sha256 = "9fa011621b345b68d019f576542f4807b1c7217d03a3752dd40d8be6028c598c";
    revisions = {
      r0 = {
        nix = import ../hackage/netcode-io-0.0.3-r0-e0710bbfead1cede17271e4c2583a301fa8d364e282dbbd8094b02ad76faa5ba.nix;
        revNum = 0;
        sha256 = "e0710bbfead1cede17271e4c2583a301fa8d364e282dbbd8094b02ad76faa5ba";
      };
      default = "r0";
    };
  };
}