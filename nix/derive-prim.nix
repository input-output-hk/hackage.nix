{
  "0.1.0.0" = {
    sha256 = "dad489b0608dfe203723911ae5912da5c7edb080910189df6bed7c6dfe484ef6";
    revisions = {
      r0 = {
        nix = import ../hackage/derive-prim-0.1.0.0-r0-90a7cf203df0508a2b786a09738df776ab43a1c80f351454e09a112b3cb8231d.nix;
        revNum = 0;
        sha256 = "90a7cf203df0508a2b786a09738df776ab43a1c80f351454e09a112b3cb8231d";
      };
      r1 = {
        nix = import ../hackage/derive-prim-0.1.0.0-r1-26c6a16f5895fca51049e38ef7785776be1042fae5d33ea663d9473a452a5a13.nix;
        revNum = 1;
        sha256 = "26c6a16f5895fca51049e38ef7785776be1042fae5d33ea663d9473a452a5a13";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "cc282163f0ad527f5ba8d1df7287eca9a465207e6fecec2ad337311a27a121ee";
    revisions = {
      r0 = {
        nix = import ../hackage/derive-prim-0.1.0.1-r0-c9877c5e9c9a71fb5c683fc7745abf49e81ddc5ec908bbd82647dfbb0fd1fdfd.nix;
        revNum = 0;
        sha256 = "c9877c5e9c9a71fb5c683fc7745abf49e81ddc5ec908bbd82647dfbb0fd1fdfd";
      };
      default = "r0";
    };
  };
}