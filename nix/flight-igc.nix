{
  "0.1.0" = {
    sha256 = "b49fb55aad039256377fcc2280519553171ff5c141da8f5e06f1dfca612f22b3";
    revisions = {
      r0 = {
        nix = import ../hackage/flight-igc-0.1.0-r0-f07a0fe0f06307b875c1f19fd1b20557873777ea4139b197534ce68b79318508.nix;
        revNum = 0;
        sha256 = "f07a0fe0f06307b875c1f19fd1b20557873777ea4139b197534ce68b79318508";
      };
      r1 = {
        nix = import ../hackage/flight-igc-0.1.0-r1-2a9e5a0a24a151d447b48f7b05eb20546ea786491eb5c40f640fcb9788b85879.nix;
        revNum = 1;
        sha256 = "2a9e5a0a24a151d447b48f7b05eb20546ea786491eb5c40f640fcb9788b85879";
      };
      default = "r1";
    };
  };
  "1.0.0" = {
    sha256 = "69e3628bc8a4528aa3f22c93704a6fc028128731165b37c4cb8cac569d05849f";
    revisions = {
      r0 = {
        nix = import ../hackage/flight-igc-1.0.0-r0-c6c814b19c2ca69eb6775a016ffb2e12a27ca5f8159dcef140bfbb3096f94394.nix;
        revNum = 0;
        sha256 = "c6c814b19c2ca69eb6775a016ffb2e12a27ca5f8159dcef140bfbb3096f94394";
      };
      default = "r0";
    };
  };
}