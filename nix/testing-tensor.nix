{
  "0.1.0" = {
    sha256 = "419572e0c4530a210893424818bb2343354e8234a1a59d922d279d7423cad4cf";
    revisions = {
      r0 = {
        nix = import ../hackage/testing-tensor-0.1.0-r0-bd8de3bd73c8d1ce79811147e53fb0d82f163db674bf2bdbd0c95c1f4767e6eb.nix;
        revNum = 0;
        sha256 = "bd8de3bd73c8d1ce79811147e53fb0d82f163db674bf2bdbd0c95c1f4767e6eb";
      };
      r1 = {
        nix = import ../hackage/testing-tensor-0.1.0-r1-060f7966c4b9fc25294b2ff1147c28dd73326ccf9fb9764137b0ec1fe0df2418.nix;
        revNum = 1;
        sha256 = "060f7966c4b9fc25294b2ff1147c28dd73326ccf9fb9764137b0ec1fe0df2418";
      };
      default = "r1";
    };
  };
  "0.1.1" = {
    sha256 = "647dfeb0767a9152c9dd4fef5050fc555fe87bfe21968a96ec51175fc07d7cfe";
    revisions = {
      r0 = {
        nix = import ../hackage/testing-tensor-0.1.1-r0-d0c2a849688f48de3d15a0721ca79d66ea449b75b5d9fc38a8723513883c8d5a.nix;
        revNum = 0;
        sha256 = "d0c2a849688f48de3d15a0721ca79d66ea449b75b5d9fc38a8723513883c8d5a";
      };
      default = "r0";
    };
  };
  "0.1.2" = {
    sha256 = "dc8672621f3b6036706bf7a1d6583145547181fb3583d12973ea670785192af7";
    revisions = {
      r0 = {
        nix = import ../hackage/testing-tensor-0.1.2-r0-359a9ae34f64fd69a52ba5a3a4adab6c7e72201c0de968bf0ecca3299d5e61ba.nix;
        revNum = 0;
        sha256 = "359a9ae34f64fd69a52ba5a3a4adab6c7e72201c0de968bf0ecca3299d5e61ba";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "0006468e4b0a90c077173e6cd9c3a4b035eb67022544004846583786dd26b1b4";
    revisions = {
      r0 = {
        nix = import ../hackage/testing-tensor-0.2.0-r0-0756a3c090c1ad62843d9dba41ff0ade4489db520a8f0220a65370de133a823d.nix;
        revNum = 0;
        sha256 = "0756a3c090c1ad62843d9dba41ff0ade4489db520a8f0220a65370de133a823d";
      };
      default = "r0";
    };
  };
}