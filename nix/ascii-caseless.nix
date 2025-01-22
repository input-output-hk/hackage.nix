{
  "0.0.0.0" = {
    sha256 = "82f0c296922beb42e0d4888f81f39fb26835f6140b4ebb1c1aa61da27f2b6003";
    revisions = {
      r0 = {
        nix = import ../hackage/ascii-caseless-0.0.0.0-r0-798652fcc70e4c1fa50f739ef6f6b28d515147265b98367aeb6c012afa417fcb.nix;
        revNum = 0;
        sha256 = "798652fcc70e4c1fa50f739ef6f6b28d515147265b98367aeb6c012afa417fcb";
      };
      r1 = {
        nix = import ../hackage/ascii-caseless-0.0.0.0-r1-5af88e4cc7ea546bb1d156600d821de40c00df8f0f4175c58fc03ee9eefe873f.nix;
        revNum = 1;
        sha256 = "5af88e4cc7ea546bb1d156600d821de40c00df8f0f4175c58fc03ee9eefe873f";
      };
      default = "r1";
    };
  };
  "0.0.0.1" = {
    sha256 = "9865b552a66d782a08e2a86ada3ef3520e6c1008ff8914b335bf453cc6100b2d";
    revisions = {
      r0 = {
        nix = import ../hackage/ascii-caseless-0.0.0.1-r0-b65c9581dad8fa5a1be2853b919229dd49622dc7f3df53373da5bdb66432f260.nix;
        revNum = 0;
        sha256 = "b65c9581dad8fa5a1be2853b919229dd49622dc7f3df53373da5bdb66432f260";
      };
      default = "r0";
    };
  };
  "0.0.0.2" = {
    sha256 = "b91d2f4dfc3e7d199374980f2ddeee56b547e6592c33d785afb517bcd6573ddc";
    revisions = {
      r0 = {
        nix = import ../hackage/ascii-caseless-0.0.0.2-r0-ac5123376d2b0b7e4e36cd301117edbfe8cc8c702d56b8f1753a537a948437bc.nix;
        revNum = 0;
        sha256 = "ac5123376d2b0b7e4e36cd301117edbfe8cc8c702d56b8f1753a537a948437bc";
      };
      default = "r0";
    };
  };
}