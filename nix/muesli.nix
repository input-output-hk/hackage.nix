{
  "0.1.0.0" = {
    sha256 = "73dee97620c06fa8b1a0ca7103447362028ccad580927b45e60c14cb3c67c65b";
    revisions = {
      r0 = {
        nix = import ../hackage/muesli-0.1.0.0-r0-dc428807acad39c0f860c7f4eae422cfbab0dbfa47401a1a0a2baae5f17a042b.nix;
        revNum = 0;
        sha256 = "dc428807acad39c0f860c7f4eae422cfbab0dbfa47401a1a0a2baae5f17a042b";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "e5b5c5b7f7d52c2df9312ffbd35e02f02868e3ad3fc6105c733484f47d99be81";
    revisions = {
      r0 = {
        nix = import ../hackage/muesli-0.1.0.1-r0-d98c1dc58d7d69dd7827c099cf1f09a4fa1f784dfef0444e2b2c48e0beac447b.nix;
        revNum = 0;
        sha256 = "d98c1dc58d7d69dd7827c099cf1f09a4fa1f784dfef0444e2b2c48e0beac447b";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "bc88e08c5534dc4f31ea18c2dd8ca8d3c66126be94db97e45ffbfdf486c7da33";
    revisions = {
      r0 = {
        nix = import ../hackage/muesli-0.1.1.0-r0-f61807f182e60f58bbaed87bada69b22f82c7d9db4e976c6df531c97b6d58fbc.nix;
        revNum = 0;
        sha256 = "f61807f182e60f58bbaed87bada69b22f82c7d9db4e976c6df531c97b6d58fbc";
      };
      r1 = {
        nix = import ../hackage/muesli-0.1.1.0-r1-0ff3ab031f5c711dfb094e8264c522ccbb353026ee35ae8fd7a5e20229d1ee15.nix;
        revNum = 1;
        sha256 = "0ff3ab031f5c711dfb094e8264c522ccbb353026ee35ae8fd7a5e20229d1ee15";
      };
      default = "r1";
    };
  };
}