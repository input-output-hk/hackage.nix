{
  "0.1.0" = {
    sha256 = "fabf1492925ec04a87a46d3b7139eb780c4183af1101cad82a39a510f6bbd546";
    revisions = {
      r0 = {
        nix = import ../hackage/restricted-workers-0.1.0-r0-5c672b117293ffeb8fb6f578df36d3889310b73b56c9f42276be515cd1664a86.nix;
        revNum = 0;
        sha256 = "5c672b117293ffeb8fb6f578df36d3889310b73b56c9f42276be515cd1664a86";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "34bd9f45d29e692c0800133d7d2890d05547bbcb689155e101fc698b2ebeb153";
    revisions = {
      r0 = {
        nix = import ../hackage/restricted-workers-0.1.1-r0-8377561c69681d9d35508ca2638b7da6e2a1c80d19f377a0bc2eb11151a7f8eb.nix;
        revNum = 0;
        sha256 = "8377561c69681d9d35508ca2638b7da6e2a1c80d19f377a0bc2eb11151a7f8eb";
      };
      default = "r0";
    };
  };
}