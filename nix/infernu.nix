{
  "0.0.0.0" = {
    sha256 = "d810f535fefd9b1b6067a026637fbea3d11297ae1185c1131955734b603f47dc";
    revisions = {
      r0 = {
        nix = import ../hackage/infernu-0.0.0.0-r0-6413fb08059ca68f5ed1a6d4812464200cf086f379104e753e256ef60ba343dd.nix;
        revNum = 0;
        sha256 = "6413fb08059ca68f5ed1a6d4812464200cf086f379104e753e256ef60ba343dd";
      };
      r1 = {
        nix = import ../hackage/infernu-0.0.0.0-r1-9031a563d3308144acf60b4ee57dc0c45bdf2dca486a56664e005d92efd815b1.nix;
        revNum = 1;
        sha256 = "9031a563d3308144acf60b4ee57dc0c45bdf2dca486a56664e005d92efd815b1";
      };
      default = "r1";
    };
  };
  "0.0.0.1" = {
    sha256 = "1697a74440cbd7209317393fae5be1993bcae70b8ec79cf070f6fa7e0bfd8a54";
    revisions = {
      r0 = {
        nix = import ../hackage/infernu-0.0.0.1-r0-ed29e78d178faa08c0d449e059e7de7cecc8ced64cf31a8263d71859c7885613.nix;
        revNum = 0;
        sha256 = "ed29e78d178faa08c0d449e059e7de7cecc8ced64cf31a8263d71859c7885613";
      };
      default = "r0";
    };
  };
}