{
  "0.1.0.0" = {
    sha256 = "58f37fafe6e56f0f159505d63f71907af0b24adb6070873664779944e46559a6";
    revisions = {
      r0 = {
        nix = import ../hackage/fcf-base-0.1.0.0-r0-7ae1f63db26f929ad52386697dca0dd3903c18b84dc561362c7fc666128081f7.nix;
        revNum = 0;
        sha256 = "7ae1f63db26f929ad52386697dca0dd3903c18b84dc561362c7fc666128081f7";
      };
      r1 = {
        nix = import ../hackage/fcf-base-0.1.0.0-r1-77459526b5d7b92d47077ce471932fe9c890946a461cd47d53d25c66fcbbe148.nix;
        revNum = 1;
        sha256 = "77459526b5d7b92d47077ce471932fe9c890946a461cd47d53d25c66fcbbe148";
      };
      r2 = {
        nix = import ../hackage/fcf-base-0.1.0.0-r2-c3629744b7b432edd518925cc6a6509e6e3637154ad976891c6cd05fb30ebc6e.nix;
        revNum = 2;
        sha256 = "c3629744b7b432edd518925cc6a6509e6e3637154ad976891c6cd05fb30ebc6e";
      };
      default = "r2";
    };
  };
  "0.1.0.1" = {
    sha256 = "88deb5f38f1835fe625d6853bd6dedcdcb77e1ffca291fb7f855149d5aa3cc72";
    revisions = {
      r0 = {
        nix = import ../hackage/fcf-base-0.1.0.1-r0-b49795c11caefc8be2edaf7afa6a93855e0e6c6fd4daf99429cfcf521308a1dc.nix;
        revNum = 0;
        sha256 = "b49795c11caefc8be2edaf7afa6a93855e0e6c6fd4daf99429cfcf521308a1dc";
      };
      default = "r0";
    };
  };
}