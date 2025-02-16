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
}