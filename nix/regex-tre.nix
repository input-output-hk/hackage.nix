{
  "0.91" = {
    sha256 = "f2ac54c70fc4b8efcaa0972e6feaf585268a1c227e1900bfbd71bb809107fdac";
    revisions = {
      r0 = {
        nix = import ../hackage/regex-tre-0.91-r0-ff4390fe6542a8736df578dcf04742599643170cd33bc84698fcd02209b9e7d6.nix;
        revNum = 0;
        sha256 = "ff4390fe6542a8736df578dcf04742599643170cd33bc84698fcd02209b9e7d6";
      };
      r1 = {
        nix = import ../hackage/regex-tre-0.91-r1-4b35b7ab4b5f829f7e07f4a51597a3c4470599425cc2122e51abbe6b62b0bdf7.nix;
        revNum = 1;
        sha256 = "4b35b7ab4b5f829f7e07f4a51597a3c4470599425cc2122e51abbe6b62b0bdf7";
      };
      default = "r1";
    };
  };
}