{
  "1.0.0" = {
    sha256 = "c0c32a45c22ddc8f9ee324d6bfd1b848cf9a8a7f7eb284811c8b772058bfa3e5";
    revisions = {
      r0 = {
        nix = import ../hackage/myTestlll-1.0.0-r0-175e436b53d282838971b91f29e29cfede0ef495c0a392118e76c160e2c9da5a.nix;
        revNum = 0;
        sha256 = "175e436b53d282838971b91f29e29cfede0ef495c0a392118e76c160e2c9da5a";
      };
      r1 = {
        nix = import ../hackage/myTestlll-1.0.0-r1-530fbcbcbc117d081c0c2d4633c7f85b986bbaca67599c8d3020b704fb341eba.nix;
        revNum = 1;
        sha256 = "530fbcbcbc117d081c0c2d4633c7f85b986bbaca67599c8d3020b704fb341eba";
      };
      r2 = {
        nix = import ../hackage/myTestlll-1.0.0-r2-7c02e332213af8728e3676f120a5a49e08bd8738f65a7e14cc2ed6473cba988e.nix;
        revNum = 2;
        sha256 = "7c02e332213af8728e3676f120a5a49e08bd8738f65a7e14cc2ed6473cba988e";
      };
      r3 = {
        nix = import ../hackage/myTestlll-1.0.0-r3-4197c7a82dd90bcbba900f2cd1db921ee276e5a61eadaea25ddf44eace283acb.nix;
        revNum = 3;
        sha256 = "4197c7a82dd90bcbba900f2cd1db921ee276e5a61eadaea25ddf44eace283acb";
      };
      r4 = {
        nix = import ../hackage/myTestlll-1.0.0-r4-e554b67c3f8efd73e028328341e3b535dc4898b3d476524a40c236c4c2871e43.nix;
        revNum = 4;
        sha256 = "e554b67c3f8efd73e028328341e3b535dc4898b3d476524a40c236c4c2871e43";
      };
      default = "r4";
    };
  };
}