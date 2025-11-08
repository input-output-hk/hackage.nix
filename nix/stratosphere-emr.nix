{
  "1.0.0" = {
    sha256 = "0631cef145f6bb71085cf32e74b4c2970b089755edceef1b99cf6eac43fce547";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-emr-1.0.0-r0-de8a505bc8868b46102e0ddee7287af0a497399d40d4460660d0dd1ce6dba798.nix;
        revNum = 0;
        sha256 = "de8a505bc8868b46102e0ddee7287af0a497399d40d4460660d0dd1ce6dba798";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "dfaf95a8eb079b09b6267d6435ae7c301d9b6d54805aa3a5cd54dff9c252af4e";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-emr-1.0.1-r0-a1118dcd4cc91c0f49cc228aace42d62adce8ae4047b938f258e9226bdac50ee.nix;
        revNum = 0;
        sha256 = "a1118dcd4cc91c0f49cc228aace42d62adce8ae4047b938f258e9226bdac50ee";
      };
      default = "r0";
    };
  };
}