{
  "0.1.0" = {
    sha256 = "061b8e43919b0fca234ab957cff85fdc3600ca0f2f38d43dac4a6e585fe33d67";
    revisions = {
      r0 = {
        nix = import ../hackage/command-0.1.0-r0-bfed285ea2aed74d14a5c603928623d92c022dcb2edaffa61c212e8febff80e8.nix;
        revNum = 0;
        sha256 = "bfed285ea2aed74d14a5c603928623d92c022dcb2edaffa61c212e8febff80e8";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "1c0a9bddc3518e08eedb61197389fe7dc53c7927a75dace3466dfc1872894662";
    revisions = {
      r0 = {
        nix = import ../hackage/command-0.1.1-r0-5232b98c195bc3b8a6f35c55ccd2fa424abe355ca54cfcd836bbe7e494834773.nix;
        revNum = 0;
        sha256 = "5232b98c195bc3b8a6f35c55ccd2fa424abe355ca54cfcd836bbe7e494834773";
      };
      default = "r0";
    };
  };
}