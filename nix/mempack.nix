{
  "0.1.0.0" = {
    sha256 = "1e9e5e13a2079d972e0805d6005e02ab616aa62303bf0ba480583ff11468c2ab";
    revisions = {
      r0 = {
        nix = import ../hackage/mempack-0.1.0.0-r0-fba1e743ad0631e14b82001717640bafe369d18fc70567c27b0b50ebde8797bb.nix;
        revNum = 0;
        sha256 = "fba1e743ad0631e14b82001717640bafe369d18fc70567c27b0b50ebde8797bb";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "d810ce2f0a9b78559cce321161d9476c30bcb88467988c34761850902345def5";
    revisions = {
      r0 = {
        nix = import ../hackage/mempack-0.1.1.0-r0-385efc7ed3ed3a6df5565a2013c90cda1aa0e02254b39581ded4d9069af6f44e.nix;
        revNum = 0;
        sha256 = "385efc7ed3ed3a6df5565a2013c90cda1aa0e02254b39581ded4d9069af6f44e";
      };
      default = "r0";
    };
  };
}