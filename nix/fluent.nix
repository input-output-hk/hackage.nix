{
  "1.0.0" = {
    sha256 = "aa03d54646ccbc62ae6a00f82d782eb025aefa277e67cc04fe32321340b180e9";
    revisions = {
      r0 = {
        nix = import ../hackage/fluent-1.0.0-r0-2e6b1fcdae622d5adbb854bc1a30b2b2ff7277d88d17bcbbe63bf6fd1d816fa7.nix;
        revNum = 0;
        sha256 = "2e6b1fcdae622d5adbb854bc1a30b2b2ff7277d88d17bcbbe63bf6fd1d816fa7";
      };
      default = "r0";
    };
  };
  "1.1.0" = {
    sha256 = "9c4e3715b1811429fdc45d319cee9f815625c90e7629df5644428c75536dcf72";
    revisions = {
      r0 = {
        nix = import ../hackage/fluent-1.1.0-r0-187ee24caa632c43f2ed393c24f8d1b76cde4288806b3248d1643412c89974ca.nix;
        revNum = 0;
        sha256 = "187ee24caa632c43f2ed393c24f8d1b76cde4288806b3248d1643412c89974ca";
      };
      default = "r0";
    };
  };
}