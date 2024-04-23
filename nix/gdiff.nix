{
  "1.0" = {
    sha256 = "35257b1090cf78f95d24c7a89920863c1d824652311fa5793693d7d06d96517b";
    revisions = {
      r0 = {
        nix = import ../hackage/gdiff-1.0-r0-2a6ec9b45019c2c87c8cc901cfb7678af6475177f959a39c884665c0a3826df9.nix;
        revNum = 0;
        sha256 = "2a6ec9b45019c2c87c8cc901cfb7678af6475177f959a39c884665c0a3826df9";
      };
      default = "r0";
    };
  };
  "1.1" = {
    sha256 = "0c2b042d177131ec5e691fd70452d5b828d8bed7c697169469f470b790430db4";
    revisions = {
      r0 = {
        nix = import ../hackage/gdiff-1.1-r0-3f2a2508a8aa84e9983eeb3537a0d76117696df4b0dd2aa69536f4bd07af533b.nix;
        revNum = 0;
        sha256 = "3f2a2508a8aa84e9983eeb3537a0d76117696df4b0dd2aa69536f4bd07af533b";
      };
      default = "r0";
    };
  };
}