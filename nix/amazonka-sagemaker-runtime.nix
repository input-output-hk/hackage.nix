{
  "1.6.0" = {
    sha256 = "ac12601d02c207322b546ea234fe1593b5419579ca0603094418a333383e9bd0";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-sagemaker-runtime-1.6.0-r0-5bca5e2dfd681713eae082981f20786c06ef257811e7fedbd8c8e33afe147535.nix;
        revNum = 0;
        sha256 = "5bca5e2dfd681713eae082981f20786c06ef257811e7fedbd8c8e33afe147535";
      };
      r1 = {
        nix = import ../hackage/amazonka-sagemaker-runtime-1.6.0-r1-024c0532b51660d76bcfd592d8212e28b3aee5748ca1125ecaeeb9a677094aac.nix;
        revNum = 1;
        sha256 = "024c0532b51660d76bcfd592d8212e28b3aee5748ca1125ecaeeb9a677094aac";
      };
      default = "r1";
    };
  };
  "1.6.1" = {
    sha256 = "e9ac1a8fb91a9f0b4e29fd02fb95669b7f4f760249703a5bc6e35310c1613446";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-sagemaker-runtime-1.6.1-r0-19ee20af2551ed5d55038c0416487c76e27fef527d8a50616f8d386c2441c9c7.nix;
        revNum = 0;
        sha256 = "19ee20af2551ed5d55038c0416487c76e27fef527d8a50616f8d386c2441c9c7";
      };
      r1 = {
        nix = import ../hackage/amazonka-sagemaker-runtime-1.6.1-r1-fec81a09a1f40b5633aede5286b51a59cc990ae5f67c83083cc4c25bf8e53725.nix;
        revNum = 1;
        sha256 = "fec81a09a1f40b5633aede5286b51a59cc990ae5f67c83083cc4c25bf8e53725";
      };
      default = "r1";
    };
  };
  "2.0" = {
    sha256 = "deebac150bec4ef5365407a9f4f10925f9ff3bad8f46c55a41c7afae8ba0b060";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-sagemaker-runtime-2.0-r0-a7a3cb3a5ae51eb3439b4ffd416e513afbcbb553e3260f02620fec204450a584.nix;
        revNum = 0;
        sha256 = "a7a3cb3a5ae51eb3439b4ffd416e513afbcbb553e3260f02620fec204450a584";
      };
      r1 = {
        nix = import ../hackage/amazonka-sagemaker-runtime-2.0-r1-4186b21eb5e3af883123f38b6e29f4bd9be6bfbd604681dea1e4055be4cccabb.nix;
        revNum = 1;
        sha256 = "4186b21eb5e3af883123f38b6e29f4bd9be6bfbd604681dea1e4055be4cccabb";
      };
      default = "r1";
    };
  };
}