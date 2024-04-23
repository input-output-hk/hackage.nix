{
  "0.1.0" = {
    sha256 = "7f9d3283a110211b2df5ff97ea7b4ce747c5e65b462b06e3c917f76b86411432";
    revisions = {
      r0 = {
        nix = import ../hackage/hydra-0.1.0-r0-2c273325ed324a3ac8a9adec97096454f35d98966d83e4c62f4e3f17f22d9053.nix;
        revNum = 0;
        sha256 = "2c273325ed324a3ac8a9adec97096454f35d98966d83e4c62f4e3f17f22d9053";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "d6c366cb76abf20edb111dd2597e907a396cabaee143596f34d5931f5a3459d2";
    revisions = {
      r0 = {
        nix = import ../hackage/hydra-0.1.1-r0-7615f788c9e8a1a96dba14da4b24753142738be4193e39ebd427393f354c6e73.nix;
        revNum = 0;
        sha256 = "7615f788c9e8a1a96dba14da4b24753142738be4193e39ebd427393f354c6e73";
      };
      default = "r0";
    };
  };
}