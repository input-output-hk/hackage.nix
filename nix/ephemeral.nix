{
  "0.0.1" = {
    sha256 = "de210f5044a07234049a1e74b08da8abd78ebb19e12772c87fceb31ab88badf7";
    revisions = {
      r0 = {
        nix = import ../hackage/ephemeral-0.0.1-r0-5614bfe64a66e74415c0d89cd0348abb820bb6429243097ff76a9e073c8cbcd5.nix;
        revNum = 0;
        sha256 = "5614bfe64a66e74415c0d89cd0348abb820bb6429243097ff76a9e073c8cbcd5";
      };
      default = "r0";
    };
  };
  "0.0.2.0" = {
    sha256 = "e71da8e41c5105574976ccade8274088a1df8b6288fb75e3443a4299aa3bbe19";
    revisions = {
      r0 = {
        nix = import ../hackage/ephemeral-0.0.2.0-r0-b82409f040b67d90c0dde41020b814b9bb8859a3f0702a304204d7bf5794f0e3.nix;
        revNum = 0;
        sha256 = "b82409f040b67d90c0dde41020b814b9bb8859a3f0702a304204d7bf5794f0e3";
      };
      default = "r0";
    };
  };
}