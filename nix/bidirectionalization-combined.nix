{
  "0.1" = {
    sha256 = "d02231ef6b0836408e93090d3b529ff851b06ed94f855accf6b086a4fe0cdf51";
    revisions = {
      r0 = {
        nix = import ../hackage/bidirectionalization-combined-0.1-r0-10aa2e8da729b9039f51ccf7b4506e6355577d063348ad459d5ccd9759bb1783.nix;
        revNum = 0;
        sha256 = "10aa2e8da729b9039f51ccf7b4506e6355577d063348ad459d5ccd9759bb1783";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "d5c85467fe98881290a82417ce3482e88e2f782eddf514f63f2a8f07f957942d";
    revisions = {
      r0 = {
        nix = import ../hackage/bidirectionalization-combined-0.1.0.1-r0-acae5f8b0c0762d4715dc4d71569e4d43ada1527bdb147d36ea2cd05f21e2589.nix;
        revNum = 0;
        sha256 = "acae5f8b0c0762d4715dc4d71569e4d43ada1527bdb147d36ea2cd05f21e2589";
      };
      r1 = {
        nix = import ../hackage/bidirectionalization-combined-0.1.0.1-r1-82e4bdfb66e0037587961722a9c3f6834796b74d472885bf5efe9478dec878bb.nix;
        revNum = 1;
        sha256 = "82e4bdfb66e0037587961722a9c3f6834796b74d472885bf5efe9478dec878bb";
      };
      default = "r1";
    };
  };
}