{
  "0.1.0.0" = {
    sha256 = "208f02d90de497b2331fd3a5db1e2a45defff4943ab0a4dfb3b7828f962b9a9a";
    revisions = {
      r0 = {
        nix = import ../hackage/primecount-0.1.0.0-r0-863e344158e4803fcb68b240c8c6a439f163736367f1326733ed11665e6c949f.nix;
        revNum = 0;
        sha256 = "863e344158e4803fcb68b240c8c6a439f163736367f1326733ed11665e6c949f";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "fa334992f7dc3768f29bdf0e25eb98bab94a9b12d5dcd6ebf2e4f952ebf66c84";
    revisions = {
      r0 = {
        nix = import ../hackage/primecount-0.1.0.1-r0-86ddcfaa1d4e6c7e3eb907eb826ad6921a5acae20f8fca6f3741b822ab68e894.nix;
        revNum = 0;
        sha256 = "86ddcfaa1d4e6c7e3eb907eb826ad6921a5acae20f8fca6f3741b822ab68e894";
      };
      r1 = {
        nix = import ../hackage/primecount-0.1.0.1-r1-a96273c1b5be9ce58977b69e5c695ae8da8a1afd631a04485f6c386498bb6769.nix;
        revNum = 1;
        sha256 = "a96273c1b5be9ce58977b69e5c695ae8da8a1afd631a04485f6c386498bb6769";
      };
      default = "r1";
    };
  };
}