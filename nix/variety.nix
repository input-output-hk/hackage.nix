{
  "0.1.0.0" = {
    sha256 = "aa8e6832356f5cd6503c791c51f9a1e27026b286223d58c08c62a4c6887b9509";
    revisions = {
      r0 = {
        nix = import ../hackage/variety-0.1.0.0-r0-c9771e95cacda09d9378d204dbebb1d0cd394f8ea6a94a8baa141cb6f6e3ecbb.nix;
        revNum = 0;
        sha256 = "c9771e95cacda09d9378d204dbebb1d0cd394f8ea6a94a8baa141cb6f6e3ecbb";
      };
      r1 = {
        nix = import ../hackage/variety-0.1.0.0-r1-b96119699d6ea460e1856bc940b4dfef91536b306f1c445f65f5014e557cfb38.nix;
        revNum = 1;
        sha256 = "b96119699d6ea460e1856bc940b4dfef91536b306f1c445f65f5014e557cfb38";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "52765a24716b1cbd503f65986e1f94c9fb732d570ea7a99eb024bc9a6b866bca";
    revisions = {
      r0 = {
        nix = import ../hackage/variety-0.1.0.1-r0-944ede64ec75518b200dab447b3209e665da8efe3ed70beb9e9db253ddb8cafe.nix;
        revNum = 0;
        sha256 = "944ede64ec75518b200dab447b3209e665da8efe3ed70beb9e9db253ddb8cafe";
      };
      default = "r0";
    };
  };
  "0.1.0.2" = {
    sha256 = "aad85c3f60bde243ef36d2e8a0714526ccdd612cd185ee5ce02acf8184dcea2f";
    revisions = {
      r0 = {
        nix = import ../hackage/variety-0.1.0.2-r0-eb92012c304b00f7eed357f725780269ffe2ce2f84e9aa49e5f9546b07fc65af.nix;
        revNum = 0;
        sha256 = "eb92012c304b00f7eed357f725780269ffe2ce2f84e9aa49e5f9546b07fc65af";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "3f24d5232933e4ec49d8bdc161a91b0a9d735f5c7f52e4ab9091e32561fb7f65";
    revisions = {
      r0 = {
        nix = import ../hackage/variety-0.2.0.0-r0-d060d6c7fe1611730397a8d91f2d7629de0028eb47a078f8dbb8de59790c4f84.nix;
        revNum = 0;
        sha256 = "d060d6c7fe1611730397a8d91f2d7629de0028eb47a078f8dbb8de59790c4f84";
      };
      default = "r0";
    };
  };
}