{
  "1.0.0" = {
    sha256 = "59d3f1ff962f1d04690eb5f9eea6880c616609709478cc6ba60184d31e35d656";
    revisions = {
      r0 = {
        nix = import ../hackage/queues-1.0.0-r0-b77fd0876781df1a70cf703c758d1873c858b318fc4fd11fb534f1326432aa2f.nix;
        revNum = 0;
        sha256 = "b77fd0876781df1a70cf703c758d1873c858b318fc4fd11fb534f1326432aa2f";
      };
      r1 = {
        nix = import ../hackage/queues-1.0.0-r1-9b9f36a467187e14deec539311b75104bd62a23c509f76f39c79d44ffa5d52ae.nix;
        revNum = 1;
        sha256 = "9b9f36a467187e14deec539311b75104bd62a23c509f76f39c79d44ffa5d52ae";
      };
      r2 = {
        nix = import ../hackage/queues-1.0.0-r2-078b1c50a295897bccef00cce9829ca1a235cddfef16e7686c96aa8394d4d322.nix;
        revNum = 2;
        sha256 = "078b1c50a295897bccef00cce9829ca1a235cddfef16e7686c96aa8394d4d322";
      };
      r3 = {
        nix = import ../hackage/queues-1.0.0-r3-70391f217b4c0cd2bcd3e3f848d5724649a2323afb20a63ba09a40dd4ceb28f0.nix;
        revNum = 3;
        sha256 = "70391f217b4c0cd2bcd3e3f848d5724649a2323afb20a63ba09a40dd4ceb28f0";
      };
      r4 = {
        nix = import ../hackage/queues-1.0.0-r4-d95cc28bc10324537f8d8147693e745fd67f1019c9f394909f5b29f48dbb57a5.nix;
        revNum = 4;
        sha256 = "d95cc28bc10324537f8d8147693e745fd67f1019c9f394909f5b29f48dbb57a5";
      };
      default = "r4";
    };
  };
}