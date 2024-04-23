{
  "0.1.0.0" = {
    sha256 = "b4e42ec3395266f3885428442e0382c6cc353d20bfdc81c80838f84e6012d433";
    revisions = {
      r0 = {
        nix = import ../hackage/plivo-0.1.0.0-r0-97bc3700aed89c848abb4cfdfd2b7a8c629088742429fba6550a6403a2e3f7a6.nix;
        revNum = 0;
        sha256 = "97bc3700aed89c848abb4cfdfd2b7a8c629088742429fba6550a6403a2e3f7a6";
      };
      r1 = {
        nix = import ../hackage/plivo-0.1.0.0-r1-ae03c27377f1b0d06666a4827fc4f6a48ad6ce9d429dabae905c9e57f6ff32f0.nix;
        revNum = 1;
        sha256 = "ae03c27377f1b0d06666a4827fc4f6a48ad6ce9d429dabae905c9e57f6ff32f0";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "e0e6ae8a8b62eb7ab62ba55c9e7408f8a12fc00c568bf867bd0af6bf2c97069b";
    revisions = {
      r0 = {
        nix = import ../hackage/plivo-0.2.0.0-r0-64385452938252967932d58e3529bfdfa177b0454f21f1e7c9e0eb4dd6173c4c.nix;
        revNum = 0;
        sha256 = "64385452938252967932d58e3529bfdfa177b0454f21f1e7c9e0eb4dd6173c4c";
      };
      r1 = {
        nix = import ../hackage/plivo-0.2.0.0-r1-7ef78cd34067e8d72872b32bcad9d01537710c11efce159c990aeb4670e4efb3.nix;
        revNum = 1;
        sha256 = "7ef78cd34067e8d72872b32bcad9d01537710c11efce159c990aeb4670e4efb3";
      };
      default = "r1";
    };
  };
}