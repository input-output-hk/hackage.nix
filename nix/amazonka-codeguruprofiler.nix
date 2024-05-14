{
  "2.0" = {
    sha256 = "712474cd25869833b5e4b3d8acf27de4b1a869e618377f3ae7026c470dc5521e";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-codeguruprofiler-2.0-r0-9188a0cd7c76aa0ff63bc604b8e6fcf649a01b7e6de6366b8d37f6970d6c1db3.nix;
        revNum = 0;
        sha256 = "9188a0cd7c76aa0ff63bc604b8e6fcf649a01b7e6de6366b8d37f6970d6c1db3";
      };
      r1 = {
        nix = import ../hackage/amazonka-codeguruprofiler-2.0-r1-e4dfdbb8608b5cac3668de9ce1776229ad8f10e8a06d6b174677eeb1af4790b8.nix;
        revNum = 1;
        sha256 = "e4dfdbb8608b5cac3668de9ce1776229ad8f10e8a06d6b174677eeb1af4790b8";
      };
      default = "r1";
    };
  };
}