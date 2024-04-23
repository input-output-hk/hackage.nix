{
  "1.0.0" = {
    sha256 = "6762b30f3b3f2b4a4ebebe04dc0150c02ad1236fa1ed408260d59957a2fe558c";
    revisions = {
      r0 = {
        nix = import ../hackage/prometheus-effect-1.0.0-r0-6bab8f4341715b994e923b62ffbe52df6b0fc8a186fbd1069c28e37f4a7ee73e.nix;
        revNum = 0;
        sha256 = "6bab8f4341715b994e923b62ffbe52df6b0fc8a186fbd1069c28e37f4a7ee73e";
      };
      r1 = {
        nix = import ../hackage/prometheus-effect-1.0.0-r1-ae46c10724d970ca715e88b736f637b1818a58ba563d35a29739bee3e26ab306.nix;
        revNum = 1;
        sha256 = "ae46c10724d970ca715e88b736f637b1818a58ba563d35a29739bee3e26ab306";
      };
      default = "r1";
    };
  };
  "1.1.0" = {
    sha256 = "2a7489e0a25a5befe49ca95360bae63936c0e81adcccf31e9f4f103fb3974ac1";
    revisions = {
      r0 = {
        nix = import ../hackage/prometheus-effect-1.1.0-r0-9c7386da0ade7c12057dfd876c13405063122750631a501aaebbf9a0a677d357.nix;
        revNum = 0;
        sha256 = "9c7386da0ade7c12057dfd876c13405063122750631a501aaebbf9a0a677d357";
      };
      default = "r0";
    };
  };
}