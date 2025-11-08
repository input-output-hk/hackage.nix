{
  "1.0.0" = {
    sha256 = "fe7dbf20e926fe61f7b8f2a9976c1eb7c2d6376428e2b0b1a4138b167095f196";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-aps-1.0.0-r0-eafe71cf11222f52a0353bfdd034435de0cc785c06320ae7f52231df95ee24e3.nix;
        revNum = 0;
        sha256 = "eafe71cf11222f52a0353bfdd034435de0cc785c06320ae7f52231df95ee24e3";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "5d45e088e1d7564d7d593e27c71f01cba430ff8d3ca81b4282c62a66aba3670b";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-aps-1.0.1-r0-f502ad6dc8de9435fb59461c302787f4d9078a92f32fbeefe6ba5140f9899f24.nix;
        revNum = 0;
        sha256 = "f502ad6dc8de9435fb59461c302787f4d9078a92f32fbeefe6ba5140f9899f24";
      };
      default = "r0";
    };
  };
}