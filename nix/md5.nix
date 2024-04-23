{
  "0.1.0.0" = {
    sha256 = "44ffad5cdb693969b0b6df3af8a6f7dda3312ef794f2840c6de2061d39371540";
    revisions = {
      r0 = {
        nix = import ../hackage/md5-0.1.0.0-r0-5fe96a35af4acc430f39aeb6255681dc5d837800b99501ad2939329aa407f439.nix;
        revNum = 0;
        sha256 = "5fe96a35af4acc430f39aeb6255681dc5d837800b99501ad2939329aa407f439";
      };
      r1 = {
        nix = import ../hackage/md5-0.1.0.0-r1-f063856886525e28ff255999ddf0b97f8301e7b58677a1ad62d22702ac7ce2e7.nix;
        revNum = 1;
        sha256 = "f063856886525e28ff255999ddf0b97f8301e7b58677a1ad62d22702ac7ce2e7";
      };
      default = "r1";
    };
  };
  "0.1.0.3" = {
    sha256 = "f9fd9902fee634d0c51b5c3defd67ee08ef8af4dc2cd133f712e5a85a6512109";
    revisions = {
      r0 = {
        nix = import ../hackage/md5-0.1.0.3-r0-dfb47b2bbb3ea147ab543e7a6ee010c229c785a90ff4f23cf47003747916a892.nix;
        revNum = 0;
        sha256 = "dfb47b2bbb3ea147ab543e7a6ee010c229c785a90ff4f23cf47003747916a892";
      };
      default = "r0";
    };
  };
}