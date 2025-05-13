{
  "0.1.0.0" = {
    sha256 = "57af5c6e8f9bfcc3e46d72e839ccf23b9c97726fb4a88ff62564f8bc36b89135";
    revisions = {
      r0 = {
        nix = import ../hackage/servant-activeresource-0.1.0.0-r0-9fc24d9c689b5fd3e04429df9c2554cc66d798d658a49dc7b7447a6940ff7fbd.nix;
        revNum = 0;
        sha256 = "9fc24d9c689b5fd3e04429df9c2554cc66d798d658a49dc7b7447a6940ff7fbd";
      };
      r1 = {
        nix = import ../hackage/servant-activeresource-0.1.0.0-r1-ed813f8c42f434c278f26595a8dbd69953aa7a299abfb8d0ffb3c85d0b5fd500.nix;
        revNum = 1;
        sha256 = "ed813f8c42f434c278f26595a8dbd69953aa7a299abfb8d0ffb3c85d0b5fd500";
      };
      default = "r1";
    };
  };
}