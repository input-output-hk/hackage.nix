{
  "0.1" = {
    sha256 = "e1e11d00d1618eaff58c6a6adbb8216620dd283b9f67b0708f399f9211dce5de";
    revisions = {
      r0 = {
        nix = import ../hackage/haskell-reflect-0.1-r0-ca547e6f2227df026f5825316658d01caba3f2119b215fca2c943f93dd049d2d.nix;
        revNum = 0;
        sha256 = "ca547e6f2227df026f5825316658d01caba3f2119b215fca2c943f93dd049d2d";
      };
      default = "r0";
    };
  };
  "0.9" = {
    sha256 = "d6ff34d5ad94815cec56e3a747817a2929cdadb2a354007b1efe02992ed2db84";
    revisions = {
      r0 = {
        nix = import ../hackage/haskell-reflect-0.9-r0-e8befd8024ea78c1f3f6816b53a2178659facad68ffc38b0829a0ce6a12d7a5e.nix;
        revNum = 0;
        sha256 = "e8befd8024ea78c1f3f6816b53a2178659facad68ffc38b0829a0ce6a12d7a5e";
      };
      default = "r0";
    };
  };
}