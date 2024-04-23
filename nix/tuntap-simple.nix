{
  "0.1.0.0" = {
    sha256 = "cecb67220c3818d989c8939df10f89e9cf4987e4a7e67b7b6202ccf997c3af8c";
    revisions = {
      r0 = {
        nix = import ../hackage/tuntap-simple-0.1.0.0-r0-0186d4665b863059f1152c2745246282e2bef622ac7d726eb14d5904b91b305a.nix;
        revNum = 0;
        sha256 = "0186d4665b863059f1152c2745246282e2bef622ac7d726eb14d5904b91b305a";
      };
      r1 = {
        nix = import ../hackage/tuntap-simple-0.1.0.0-r1-fc24cfe8eb9a16ff1ce3b4fc80ee7e93f8185a3e06dd69ae24288b0cc045abf9.nix;
        revNum = 1;
        sha256 = "fc24cfe8eb9a16ff1ce3b4fc80ee7e93f8185a3e06dd69ae24288b0cc045abf9";
      };
      r2 = {
        nix = import ../hackage/tuntap-simple-0.1.0.0-r2-28866402f6b3961fe4808afe7d02e3cd3b5d73d99ec02aec67f2bd205dd94a96.nix;
        revNum = 2;
        sha256 = "28866402f6b3961fe4808afe7d02e3cd3b5d73d99ec02aec67f2bd205dd94a96";
      };
      default = "r2";
    };
  };
}