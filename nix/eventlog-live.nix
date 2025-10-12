{
  "0.1.0.0" = {
    sha256 = "b0e643bf149b966e3cbb07554f89bfc32e4c45e5b51ff196968cf3d8da4d9f4c";
    revisions = {
      r0 = {
        nix = import ../hackage/eventlog-live-0.1.0.0-r0-c1ca5f75d8a9f2d4209daa2bd4ebf223e117fc627a8bc5daf181cb410eafabe3.nix;
        revNum = 0;
        sha256 = "c1ca5f75d8a9f2d4209daa2bd4ebf223e117fc627a8bc5daf181cb410eafabe3";
      };
      r1 = {
        nix = import ../hackage/eventlog-live-0.1.0.0-r1-cca91b6d9fababe3e93a0ef4603c35d92ac4503c028727b4207d39a48cf9b35b.nix;
        revNum = 1;
        sha256 = "cca91b6d9fababe3e93a0ef4603c35d92ac4503c028727b4207d39a48cf9b35b";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "af22097c6ad6495b0f1c5296456c54ece772757b5d2aeb7bfba575f0b4f668ba";
    revisions = {
      r0 = {
        nix = import ../hackage/eventlog-live-0.1.0.1-r0-a57d1b2d8a370c74e5df8350b1d409c1c5bf94e7d7f19c6c7170c9585a0652ff.nix;
        revNum = 0;
        sha256 = "a57d1b2d8a370c74e5df8350b1d409c1c5bf94e7d7f19c6c7170c9585a0652ff";
      };
      r1 = {
        nix = import ../hackage/eventlog-live-0.1.0.1-r1-2f567106907f9ada37d2aa4e57ff67f141379497fd43f8b9bfef6b9e5096660f.nix;
        revNum = 1;
        sha256 = "2f567106907f9ada37d2aa4e57ff67f141379497fd43f8b9bfef6b9e5096660f";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "aa875f3f7f54033caed5409f9e00f5f1e752805be938748571a80dca3b6af554";
    revisions = {
      r0 = {
        nix = import ../hackage/eventlog-live-0.2.0.0-r0-f1a4a7d5a50f1fd1666c3a0c0298be81a460e0522463de5c577dfd6edd7dbf16.nix;
        revNum = 0;
        sha256 = "f1a4a7d5a50f1fd1666c3a0c0298be81a460e0522463de5c577dfd6edd7dbf16";
      };
      default = "r0";
    };
  };
}