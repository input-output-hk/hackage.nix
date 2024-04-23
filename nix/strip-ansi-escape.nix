{
  "0.1.0.0" = {
    sha256 = "a85f0715ecfeb46e41d24083d98dfe6152f64a19a6ad2d34daeac3c99e27bf7b";
    revisions = {
      r0 = {
        nix = import ../hackage/strip-ansi-escape-0.1.0.0-r0-86de8ffca6047baf3e9f46fc1576d61899aee2d7a540694b01214baabc26855c.nix;
        revNum = 0;
        sha256 = "86de8ffca6047baf3e9f46fc1576d61899aee2d7a540694b01214baabc26855c";
      };
      r1 = {
        nix = import ../hackage/strip-ansi-escape-0.1.0.0-r1-bc7a64e80af194cb5ccfd03435744819792461b86dbf88b9a7458b38131a7cfd.nix;
        revNum = 1;
        sha256 = "bc7a64e80af194cb5ccfd03435744819792461b86dbf88b9a7458b38131a7cfd";
      };
      r2 = {
        nix = import ../hackage/strip-ansi-escape-0.1.0.0-r2-08f2ed93b16086a837ec46eab7ce8d27cf39d47783caaeb818878ea33c2ff75f.nix;
        revNum = 2;
        sha256 = "08f2ed93b16086a837ec46eab7ce8d27cf39d47783caaeb818878ea33c2ff75f";
      };
      default = "r2";
    };
  };
}