{
  "0.1" = {
    sha256 = "9df7a286191ba5289543dde2c350f43e5a74921fd94d4f1160a601fbb9914391";
    revisions = {
      r0 = {
        nix = import ../hackage/remote-0.1-r0-5bb42dd903bc7151ad8f188c0eff7c89215bc93bf7677e4d5e3606ecee25f580.nix;
        revNum = 0;
        sha256 = "5bb42dd903bc7151ad8f188c0eff7c89215bc93bf7677e4d5e3606ecee25f580";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "c03d049494e69fe3ff1067dfeb2cb5ba3f1fd08ae4ef517024f706c12efc5c91";
    revisions = {
      r0 = {
        nix = import ../hackage/remote-0.1.1-r0-97eddd688e2ae4eddf15b1062a1fbc1ce10438f4b052fe256a57b4fcb01bd837.nix;
        revNum = 0;
        sha256 = "97eddd688e2ae4eddf15b1062a1fbc1ce10438f4b052fe256a57b4fcb01bd837";
      };
      default = "r0";
    };
  };
}