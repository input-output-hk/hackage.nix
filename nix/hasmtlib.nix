{
  "1.0.0" = {
    sha256 = "2e4a3384d870db4d59bc491d1902bfb40b95c1e7a934cdffcf78d7e4490cbb3b";
    revisions = {
      r0 = {
        nix = import ../hackage/hasmtlib-1.0.0-r0-aa4585bf854e4d4e9de280cde8dd73dc45192d7f94febe6aefc217ebe07418f0.nix;
        revNum = 0;
        sha256 = "aa4585bf854e4d4e9de280cde8dd73dc45192d7f94febe6aefc217ebe07418f0";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "7e356156274071abe043c87edd8851cb95629936d64abc946514b1dc06f7a006";
    revisions = {
      r0 = {
        nix = import ../hackage/hasmtlib-1.0.1-r0-f97142055af784598135fac0401ee40468f985c0ea2e59b9f57dfc575df0f678.nix;
        revNum = 0;
        sha256 = "f97142055af784598135fac0401ee40468f985c0ea2e59b9f57dfc575df0f678";
      };
      default = "r0";
    };
  };
}