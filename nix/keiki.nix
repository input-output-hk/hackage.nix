{
  "0.1.0.0" = {
    sha256 = "42272eccaaf315f3fafcabc989641c63fd14bbd1c46729e3b1a70945f1e36cff";
    revisions = {
      r0 = {
        nix = import ../hackage/keiki-0.1.0.0-r0-1a321c77e1fda4485ef215790f1c95c741c96f6e77834508fbbae1ebc9e4cbde.nix;
        revNum = 0;
        sha256 = "1a321c77e1fda4485ef215790f1c95c741c96f6e77834508fbbae1ebc9e4cbde";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "fdb6f4a136162fef3d98d272e8fac3af1db3f06805128db0f5c693a8e9c54622";
    revisions = {
      r0 = {
        nix = import ../hackage/keiki-0.2.0.0-r0-5dd3c6146cdf0d19e83efd2af746e17558767a0e87c3a2824b92d46ef2c3f600.nix;
        revNum = 0;
        sha256 = "5dd3c6146cdf0d19e83efd2af746e17558767a0e87c3a2824b92d46ef2c3f600";
      };
      default = "r0";
    };
  };
}