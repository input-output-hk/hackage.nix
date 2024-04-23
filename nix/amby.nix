{
  "0.2.0" = {
    sha256 = "56ad38cf672f3ef349112aefe16b93d9fa603eac7ccbfbf8a610eea15e835407";
    revisions = {
      r0 = {
        nix = import ../hackage/amby-0.2.0-r0-673e0fbf0e9d736ae3e2bd7cba7b90c1cfddf319193dffb3a988ff73cf6f7c48.nix;
        revNum = 0;
        sha256 = "673e0fbf0e9d736ae3e2bd7cba7b90c1cfddf319193dffb3a988ff73cf6f7c48";
      };
      r1 = {
        nix = import ../hackage/amby-0.2.0-r1-5cef23feaf7115e0fd3dfc42d4840cf21fa529629fbe6afed9a6db1affcd9809.nix;
        revNum = 1;
        sha256 = "5cef23feaf7115e0fd3dfc42d4840cf21fa529629fbe6afed9a6db1affcd9809";
      };
      default = "r1";
    };
  };
  "0.2.1" = {
    sha256 = "2430c8d5657af53a4bcc6d7856882375f0ffbcb7c360a2b8fd23cda6e2d33ffa";
    revisions = {
      r0 = {
        nix = import ../hackage/amby-0.2.1-r0-4b3d992780a21acdd8f9f457b368d8bf0094960dd57e6ec76274c45544ad0c44.nix;
        revNum = 0;
        sha256 = "4b3d992780a21acdd8f9f457b368d8bf0094960dd57e6ec76274c45544ad0c44";
      };
      r1 = {
        nix = import ../hackage/amby-0.2.1-r1-0cf317eee0251e20650218b1f54fa76513536336ad033385510b9641837ad7be.nix;
        revNum = 1;
        sha256 = "0cf317eee0251e20650218b1f54fa76513536336ad033385510b9641837ad7be";
      };
      default = "r1";
    };
  };
  "0.3.1" = {
    sha256 = "c13b92e077e577df6e34da03bd267f9e9c29a0f3345e6935915aabf8a3b3fda5";
    revisions = {
      r0 = {
        nix = import ../hackage/amby-0.3.1-r0-f2ace4bb13aca771c6229db1792cf55faa3c8a5bcca670c7336049db4c30bb53.nix;
        revNum = 0;
        sha256 = "f2ace4bb13aca771c6229db1792cf55faa3c8a5bcca670c7336049db4c30bb53";
      };
      default = "r0";
    };
  };
  "0.3.2" = {
    sha256 = "fa7b70c21377bb19396a69a5782abb0400ce19d99082d6a9f191c790a5049369";
    revisions = {
      r0 = {
        nix = import ../hackage/amby-0.3.2-r0-f0703dabcc20d840ba75f6b86557a587e0b72fe29189df4c16c2f807598bca20.nix;
        revNum = 0;
        sha256 = "f0703dabcc20d840ba75f6b86557a587e0b72fe29189df4c16c2f807598bca20";
      };
      default = "r0";
    };
  };
}