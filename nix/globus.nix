{
  "0.1.2" = {
    sha256 = "241556d1e564223e405176806ecceeb2d77913a38e82853c4248015c2675dea5";
    revisions = {
      r0 = {
        nix = import ../hackage/globus-0.1.2-r0-9aafc140d3b357f905cacea6306b9670ec6a2f86c05a41f7ac32e779a865068c.nix;
        revNum = 0;
        sha256 = "9aafc140d3b357f905cacea6306b9670ec6a2f86c05a41f7ac32e779a865068c";
      };
      default = "r0";
    };
  };
  "0.1.3" = {
    sha256 = "3ddc5d33e98fd014bcb7cb1420580f968248ef59b23f82054a6ed60a83b057d8";
    revisions = {
      r0 = {
        nix = import ../hackage/globus-0.1.3-r0-1dd978a74ef2226d25f0cee5beff6772c74baeb863d26b1804627ba4b54c561d.nix;
        revNum = 0;
        sha256 = "1dd978a74ef2226d25f0cee5beff6772c74baeb863d26b1804627ba4b54c561d";
      };
      default = "r0";
    };
  };
}