{
  "1.0" = {
    sha256 = "3c58ab820717e0f31158dbbc974e91a887c7bfdc63e5b4f409fae3082a351fce";
    revisions = {
      r0 = {
        nix = import ../hackage/definitive-parser-1.0-r0-687310edd98d43be07af6fb17eb015f8e12610f3862e2e072ae49a4d9214bfd8.nix;
        revNum = 0;
        sha256 = "687310edd98d43be07af6fb17eb015f8e12610f3862e2e072ae49a4d9214bfd8";
      };
      default = "r0";
    };
  };
  "1.2" = {
    sha256 = "37801285e6cc9f0c3ea097de4e2bd6cea7e9679fe461c25b5b00261089a6f5ce";
    revisions = {
      r0 = {
        nix = import ../hackage/definitive-parser-1.2-r0-c8359047817962ae7f3d9d3d5f3347e86aa67abe95d350a8c65ed0c1b06d42bb.nix;
        revNum = 0;
        sha256 = "c8359047817962ae7f3d9d3d5f3347e86aa67abe95d350a8c65ed0c1b06d42bb";
      };
      r1 = {
        nix = import ../hackage/definitive-parser-1.2-r1-4c31b2e0060e257056b2c797ffeedb77ed1c6701e6cf96363d9a255a6e90d744.nix;
        revNum = 1;
        sha256 = "4c31b2e0060e257056b2c797ffeedb77ed1c6701e6cf96363d9a255a6e90d744";
      };
      default = "r1";
    };
  };
  "2.1" = {
    sha256 = "b0daf9e7628cd18be904eab9005e0d02fdb8fd706426d46b3256ee335f3f876a";
    revisions = {
      r0 = {
        nix = import ../hackage/definitive-parser-2.1-r0-068157a4b82a5405b407d1897a067026e5be57967e57be0748ebc8ac1df22020.nix;
        revNum = 0;
        sha256 = "068157a4b82a5405b407d1897a067026e5be57967e57be0748ebc8ac1df22020";
      };
      default = "r0";
    };
  };
}