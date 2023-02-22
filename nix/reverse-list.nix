{
  "0.2.0" = {
    sha256 = "f07de287c3ce0d4d6b536083bcbcde7f3e6b8f0a0f2c1c8c1c5dcf1d58968b64";
    revisions = {
      r0 = {
        nix = import ../hackage/reverse-list-0.2.0-r0-71edfb401cbc859aa952fc9c409d263e12d15fbbb0d8709cfc1b3f955ed60962.nix;
        revNum = 0;
        sha256 = "71edfb401cbc859aa952fc9c409d263e12d15fbbb0d8709cfc1b3f955ed60962";
        };
      r1 = {
        nix = import ../hackage/reverse-list-0.2.0-r1-04a7ac92d4462f12ba3be029c5dae7920e19e2f45a645a673a060986dbdc5328.nix;
        revNum = 1;
        sha256 = "04a7ac92d4462f12ba3be029c5dae7920e19e2f45a645a673a060986dbdc5328";
        };
      r2 = {
        nix = import ../hackage/reverse-list-0.2.0-r2-7678d543862e7c83b1ccb918af572625c4de41b3bf0a0378c6b52a3cf39c44fb.nix;
        revNum = 2;
        sha256 = "7678d543862e7c83b1ccb918af572625c4de41b3bf0a0378c6b52a3cf39c44fb";
        };
      default = "r2";
      };
    };
  }