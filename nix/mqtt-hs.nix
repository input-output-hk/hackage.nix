{
  "0.2.0" = {
    sha256 = "4f56d06f2ff3ba9fd416f0894a4b1ad5b5879f56cb72876408b4b7bab0c97f4b";
    revisions = {
      r0 = {
        nix = import ../hackage/mqtt-hs-0.2.0-r0-aa246df0da5b68f52dbf81c6dc2942bf882544cbc8a199b73e3703798e6584f7.nix;
        revNum = 0;
        sha256 = "aa246df0da5b68f52dbf81c6dc2942bf882544cbc8a199b73e3703798e6584f7";
      };
      r1 = {
        nix = import ../hackage/mqtt-hs-0.2.0-r1-aa0a2e9ea99cfbed4646ac02625b66361f8175ae2d70efc041dc517119706439.nix;
        revNum = 1;
        sha256 = "aa0a2e9ea99cfbed4646ac02625b66361f8175ae2d70efc041dc517119706439";
      };
      default = "r1";
    };
  };
  "1.0.0" = {
    sha256 = "14e4b668f27d1e1380e4a881f38441dcf02329d4708f1cd951401ebc82a771b1";
    revisions = {
      r0 = {
        nix = import ../hackage/mqtt-hs-1.0.0-r0-1a355e45b83c405aacc0cabf0fe9d522acd50d3ab65c42a8709c896acea1cf81.nix;
        revNum = 0;
        sha256 = "1a355e45b83c405aacc0cabf0fe9d522acd50d3ab65c42a8709c896acea1cf81";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "ed804b7a0576daaa389df3cb197c159439efd2b8a4386f66df6368e66cb2caf0";
    revisions = {
      r0 = {
        nix = import ../hackage/mqtt-hs-1.0.1-r0-6202907f8e036475d2d9f62385f9669f97921031612725597ee3eb08d14d19c5.nix;
        revNum = 0;
        sha256 = "6202907f8e036475d2d9f62385f9669f97921031612725597ee3eb08d14d19c5";
      };
      default = "r0";
    };
  };
  "1.0.2" = {
    sha256 = "d5969d782e6ba93bfd3ec7cf6fd8b9d700e0037c9e6385178a1e5a05d680dcef";
    revisions = {
      r0 = {
        nix = import ../hackage/mqtt-hs-1.0.2-r0-db49cf78d8fb9dbffc01c2bc8cb4f8657b796865fdb7c4711ed59cddd8418f87.nix;
        revNum = 0;
        sha256 = "db49cf78d8fb9dbffc01c2bc8cb4f8657b796865fdb7c4711ed59cddd8418f87";
      };
      default = "r0";
    };
  };
}