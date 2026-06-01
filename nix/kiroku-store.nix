{
  "0.1.0.0" = {
    sha256 = "9a0d01ef90d56ca9f56761e12169ff5e7cc5ac9edfdfd8bb8643bb998fd2f2a5";
    revisions = {
      r0 = {
        nix = import ../hackage/kiroku-store-0.1.0.0-r0-ec774d86e49eebb1645c91ef84445d8986ed64684ce63bf9e1f702e2d8e44ef6.nix;
        revNum = 0;
        sha256 = "ec774d86e49eebb1645c91ef84445d8986ed64684ce63bf9e1f702e2d8e44ef6";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "38cfd35bc22d2ffc654275de3c5f7afbb41a9357344b15b845168bc521cce9ea";
    revisions = {
      r0 = {
        nix = import ../hackage/kiroku-store-0.2.0.0-r0-f777201ac80ed2cc63d0f7e82256af61134bc4394cb082add9db13ba70101ccd.nix;
        revNum = 0;
        sha256 = "f777201ac80ed2cc63d0f7e82256af61134bc4394cb082add9db13ba70101ccd";
      };
      default = "r0";
    };
  };
}