{
  "0.0.1.0" = {
    sha256 = "d75b646124e1b8e3c4c1ad6372495f7c179942867f176c68d9861f5fdeecf5af";
    revisions = {
      r0 = {
        nix = import ../hackage/evdev-streamly-0.0.1.0-r0-48b0e83a300daaba7aec1f4e6420e3daf0167aa7f87b3b85dcfdcb4f236780c8.nix;
        revNum = 0;
        sha256 = "48b0e83a300daaba7aec1f4e6420e3daf0167aa7f87b3b85dcfdcb4f236780c8";
      };
      r1 = {
        nix = import ../hackage/evdev-streamly-0.0.1.0-r1-f209c7cab38087470e183110f222bf37e4fe5bb396e72e70fc6964fe1359b60b.nix;
        revNum = 1;
        sha256 = "f209c7cab38087470e183110f222bf37e4fe5bb396e72e70fc6964fe1359b60b";
      };
      default = "r1";
    };
  };
  "0.0.2.0" = {
    sha256 = "661ffdc65e5f5cf977d702c4bb6dab28d0b59363798f194ed6349c10da78336f";
    revisions = {
      r0 = {
        nix = import ../hackage/evdev-streamly-0.0.2.0-r0-93ce95eb4b33a0543b83e48a1948bec8a3c724e54bd061ca49cba216cd8cac4f.nix;
        revNum = 0;
        sha256 = "93ce95eb4b33a0543b83e48a1948bec8a3c724e54bd061ca49cba216cd8cac4f";
      };
      r1 = {
        nix = import ../hackage/evdev-streamly-0.0.2.0-r1-159380c9b8681b2f2dbfb53feed86388d6417831046dc8ded8c936406b188887.nix;
        revNum = 1;
        sha256 = "159380c9b8681b2f2dbfb53feed86388d6417831046dc8ded8c936406b188887";
      };
      default = "r1";
    };
  };
}