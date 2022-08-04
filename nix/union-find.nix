{
  "0.1" = {
    sha256 = "014e62610d47fc132de956a60354156536d23686c39d7e30aea6249953de596c";
    revisions = {
      r0 = {
        nix = import ../hackage/union-find-0.1-r0-0e0cf12d94aaccc20f83a4f33378c2d5ae9e179e2442c0c558f0a9690920b597.nix;
        revNum = 0;
        sha256 = "0e0cf12d94aaccc20f83a4f33378c2d5ae9e179e2442c0c558f0a9690920b597";
        };
      default = "r0";
      };
    };
  "0.2" = {
    sha256 = "e6c2682bb8c06e8c43e360f45658d0eea17209cce84953e2a7d2f0240591f0ec";
    revisions = {
      r0 = {
        nix = import ../hackage/union-find-0.2-r0-34ef40a13d06e4f9d2a7a8c398709ab76e5e7b31586eca909fe1ff17a267d679.nix;
        revNum = 0;
        sha256 = "34ef40a13d06e4f9d2a7a8c398709ab76e5e7b31586eca909fe1ff17a267d679";
        };
      r1 = {
        nix = import ../hackage/union-find-0.2-r1-22e97cd9aeb8c96bf7cd8d359d4eda635dc0e0a6cd91b9a07e5a203b00949c8d.nix;
        revNum = 1;
        sha256 = "22e97cd9aeb8c96bf7cd8d359d4eda635dc0e0a6cd91b9a07e5a203b00949c8d";
        };
      default = "r1";
      };
    };
  }