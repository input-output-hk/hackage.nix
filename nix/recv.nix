{
  "0.0.0" = {
    sha256 = "5c6872652e1025a701a73d9e97b02796f9433c42e2eec6d7e2acfb544b5ae9fb";
    revisions = {
      r0 = {
        nix = import ../hackage/recv-0.0.0-r0-d146b0decff93c72f043ec06d7bed2ca53595ceb61debb43c94302e657378508.nix;
        revNum = 0;
        sha256 = "d146b0decff93c72f043ec06d7bed2ca53595ceb61debb43c94302e657378508";
      };
      default = "r0";
    };
  };
  "0.1.0" = {
    sha256 = "f664905cffb44b7f9cba604cd75bd69011a666ba06bccbcb7f3fae0cd4f14d5b";
    revisions = {
      r0 = {
        nix = import ../hackage/recv-0.1.0-r0-04058c90ed3d2821b92e589dd3428f5a6e9d49ab405296dda3583304cb0b9bb3.nix;
        revNum = 0;
        sha256 = "04058c90ed3d2821b92e589dd3428f5a6e9d49ab405296dda3583304cb0b9bb3";
      };
      default = "r0";
    };
  };
}