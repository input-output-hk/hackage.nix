{
  "0.0.1" = {
    sha256 = "b0b731fa2a38b038af86627e11bc00bcbdefc8c4a4bd3bd2d8842308c8465ac1";
    revisions = {
      r0 = {
        nix = import ../hackage/arxiv-0.0.1-r0-9e3500b1620e4ac97b3c689f300400bb2e77aeb0e4aa50b33f3c346bf01f2863.nix;
        revNum = 0;
        sha256 = "9e3500b1620e4ac97b3c689f300400bb2e77aeb0e4aa50b33f3c346bf01f2863";
      };
      r1 = {
        nix = import ../hackage/arxiv-0.0.1-r1-746311e6003440248df63acd19e428cbdbf5c95cdd3ee0993d2c89c7b2ceada7.nix;
        revNum = 1;
        sha256 = "746311e6003440248df63acd19e428cbdbf5c95cdd3ee0993d2c89c7b2ceada7";
      };
      default = "r1";
    };
  };
  "0.0.2" = {
    sha256 = "903fac8b7effc03bd3f6e23be012dca691cdcb1c1cdbe5d0fe26f8eccae0f553";
    revisions = {
      r0 = {
        nix = import ../hackage/arxiv-0.0.2-r0-2e9299c132af5838a756c3e4eaf879e0a0cfa9a2c7e2925ad2936df7d37bc993.nix;
        revNum = 0;
        sha256 = "2e9299c132af5838a756c3e4eaf879e0a0cfa9a2c7e2925ad2936df7d37bc993";
      };
      default = "r0";
    };
  };
  "0.0.3" = {
    sha256 = "09d5b7202daf0d1f265526fe334cf2e564f5492b46ec0444e88fc96ae7ea7fe7";
    revisions = {
      r0 = {
        nix = import ../hackage/arxiv-0.0.3-r0-02de1114091d11f1f3ab401d104d125ad4301260806feb7f63b3dcefc7db88cf.nix;
        revNum = 0;
        sha256 = "02de1114091d11f1f3ab401d104d125ad4301260806feb7f63b3dcefc7db88cf";
      };
      default = "r0";
    };
  };
}