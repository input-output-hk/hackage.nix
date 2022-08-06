{
  "0.1.0.0" = {
    sha256 = "fa9d7325c2d0b4ad3f54bd268fc2cc428dcc056b368772093e6dbe3bfe1f0812";
    revisions = {
      r0 = {
        nix = import ../hackage/file-io-0.1.0.0-r0-3aaa47968771c7f2efa1a001689ada8f173d7eb9a15eafe245a6afa4a590fc8d.nix;
        revNum = 0;
        sha256 = "3aaa47968771c7f2efa1a001689ada8f173d7eb9a15eafe245a6afa4a590fc8d";
        };
      r1 = {
        nix = import ../hackage/file-io-0.1.0.0-r1-fa25a66812756bdff10af6760d6a42c5ffa4d994c38c342b95baf9bd93990d2a.nix;
        revNum = 1;
        sha256 = "fa25a66812756bdff10af6760d6a42c5ffa4d994c38c342b95baf9bd93990d2a";
        };
      default = "r1";
      };
    };
  }