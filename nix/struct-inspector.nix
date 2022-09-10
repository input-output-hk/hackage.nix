{
  "1.0.0" = {
    sha256 = "65da8fa07443728a6885f7a5382c52551b62e8b80a949d6e6a0e618bbdf5c4a7";
    revisions = {
      r0 = {
        nix = import ../hackage/struct-inspector-1.0.0-r0-a7cab64614b2a8aa6a2e90965afdf558b5095a3cc34238ef2598a6013710af49.nix;
        revNum = 0;
        sha256 = "a7cab64614b2a8aa6a2e90965afdf558b5095a3cc34238ef2598a6013710af49";
        };
      r1 = {
        nix = import ../hackage/struct-inspector-1.0.0-r1-dbf2b8058814c5e4656a4e9b706ef9df88a58f9107a85bcd3ba1ebb64cf1d0a3.nix;
        revNum = 1;
        sha256 = "dbf2b8058814c5e4656a4e9b706ef9df88a58f9107a85bcd3ba1ebb64cf1d0a3";
        };
      default = "r1";
      };
    };
  "1.1.0" = {
    sha256 = "26590b6f178e6c37d0e183ba0e4a42e2ba970e76a6836f2cd43f2f2974857121";
    revisions = {
      r0 = {
        nix = import ../hackage/struct-inspector-1.1.0-r0-83896bee2350b403d04a7215329420b8ffb2b02f4a75caee5e02fbcfefa4f19a.nix;
        revNum = 0;
        sha256 = "83896bee2350b403d04a7215329420b8ffb2b02f4a75caee5e02fbcfefa4f19a";
        };
      default = "r0";
      };
    };
  }