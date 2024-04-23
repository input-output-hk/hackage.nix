{
  "0.1" = {
    sha256 = "3a830091ab6be16bc78cf3752b35feef45f440afada74d9c70107c8d671a7da4";
    revisions = {
      r0 = {
        nix = import ../hackage/X11-rm-0.1-r0-2c35bd111d1c73a986da3fb77bdb695130a029ebaab172e250e5cbad7312af9f.nix;
        revNum = 0;
        sha256 = "2c35bd111d1c73a986da3fb77bdb695130a029ebaab172e250e5cbad7312af9f";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "23934dece742f54d7505ce5cda525d59aadcb2f0cfa35d5a6bf2c9d494a25d86";
    revisions = {
      r0 = {
        nix = import ../hackage/X11-rm-0.2-r0-b6af9679eda6460426dc441992582556e82041b81aeff5e1a4202e1ab06015a8.nix;
        revNum = 0;
        sha256 = "b6af9679eda6460426dc441992582556e82041b81aeff5e1a4202e1ab06015a8";
      };
      default = "r0";
    };
  };
}