{
  "0.0.0.0" = {
    sha256 = "087527ec3841330b5328d123ca410901905d111529956821b724d92c436e6cdf";
    revisions = {
      r0 = {
        nix = import ../hackage/grpc-haskell-core-0.0.0.0-r0-4bacd90915321750db570042cd05ada01b9b83c79f6bf6b6ccdef1889b383efa.nix;
        revNum = 0;
        sha256 = "4bacd90915321750db570042cd05ada01b9b83c79f6bf6b6ccdef1889b383efa";
      };
      default = "r0";
    };
  };
  "0.1.0" = {
    sha256 = "e6fe00cb5d973f5330a825271710a133036e208524d2eac72266368d17955eb6";
    revisions = {
      r0 = {
        nix = import ../hackage/grpc-haskell-core-0.1.0-r0-50adbefd11be9e8b72ea98b7c3b5a4b2879fea211de4552b9759b91f2d4d8c51.nix;
        revNum = 0;
        sha256 = "50adbefd11be9e8b72ea98b7c3b5a4b2879fea211de4552b9759b91f2d4d8c51";
      };
      default = "r0";
    };
  };
}