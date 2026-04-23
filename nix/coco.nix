{
  "0.0.0.0" = {
    sha256 = "0680ade83ae66c41f126dfc843371dbda63f3efbebd54a46ade1421a4c34ae43";
    revisions = {
      r0 = {
        nix = import ../hackage/coco-0.0.0.0-r0-90ad5319814820ed264f74058bbe02af8ecbcd5650cb8444c99076ba4da3b5e8.nix;
        revNum = 0;
        sha256 = "90ad5319814820ed264f74058bbe02af8ecbcd5650cb8444c99076ba4da3b5e8";
      };
      default = "r0";
    };
  };
  "0.0.1.0" = {
    sha256 = "d31724b942bec5dedf0f714267a26efe9b24c2d8a6c0d050a3b99610ce4fd0cf";
    revisions = {
      r0 = {
        nix = import ../hackage/coco-0.0.1.0-r0-3fb05e221b712b8e9563cc88098573994d6baa3eedaa0b604e054b58d6c7a77c.nix;
        revNum = 0;
        sha256 = "3fb05e221b712b8e9563cc88098573994d6baa3eedaa0b604e054b58d6c7a77c";
      };
      default = "r0";
    };
  };
}