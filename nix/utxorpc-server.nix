{
  "0.0.1.0" = {
    sha256 = "57562d77d5082e249472a87e94da67c31209fd95ccd380089ae2b28921e5d311";
    revisions = {
      r0 = {
        nix = import ../hackage/utxorpc-server-0.0.1.0-r0-641c160fef5447c64cd81a554f471430c31f48b2534fac8de871e1b7c58bb5c8.nix;
        revNum = 0;
        sha256 = "641c160fef5447c64cd81a554f471430c31f48b2534fac8de871e1b7c58bb5c8";
        };
      default = "r0";
      };
    };
  "0.0.1.1" = {
    sha256 = "58fe316ff465d1d8d0a45996bac8961f2deac3c352eff20397132c500ccbb408";
    revisions = {
      r0 = {
        nix = import ../hackage/utxorpc-server-0.0.1.1-r0-c4f1b4390575ff323d03c1b511fba4092529de6163f0b0a079a03401ef20e4b5.nix;
        revNum = 0;
        sha256 = "c4f1b4390575ff323d03c1b511fba4092529de6163f0b0a079a03401ef20e4b5";
        };
      r1 = {
        nix = import ../hackage/utxorpc-server-0.0.1.1-r1-53e9737d4e7d91c82d33fb2d39264c1d5e798f333d811d3d09688fd408cb1d1a.nix;
        revNum = 1;
        sha256 = "53e9737d4e7d91c82d33fb2d39264c1d5e798f333d811d3d09688fd408cb1d1a";
        };
      default = "r1";
      };
    };
  }