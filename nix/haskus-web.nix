{
  "1.0" = {
    sha256 = "06570d840a49bc3df23e1bed91a92957128191284d02fbc1801bd898448babca";
    revisions = {
      r0 = {
        nix = import ../hackage/haskus-web-1.0-r0-b5b1fa8680d9388cb0739ff36fec05e7f5e72657ebf674b05bb63252a7b01b58.nix;
        revNum = 0;
        sha256 = "b5b1fa8680d9388cb0739ff36fec05e7f5e72657ebf674b05bb63252a7b01b58";
      };
      default = "r0";
    };
  };
  "1.1" = {
    sha256 = "6f3c3ac04ebd87ee2b3fa33d2ddbd0285d1a10f5ed3d43dbec0ec7d35038a295";
    revisions = {
      r0 = {
        nix = import ../hackage/haskus-web-1.1-r0-e2eb54373b694a114d60251853f6d336429ea224fc5ca94705df59ed0e83d2cf.nix;
        revNum = 0;
        sha256 = "e2eb54373b694a114d60251853f6d336429ea224fc5ca94705df59ed0e83d2cf";
      };
      default = "r0";
    };
  };
}