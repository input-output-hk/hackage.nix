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
  "0.1.0.1" = {
    sha256 = "84142deac605e755541479ecef0c8177f3295afe62d637f6a1b5feb11b13b9cf";
    revisions = {
      r0 = {
        nix = import ../hackage/file-io-0.1.0.1-r0-e386132ae45e0e5a62af4cd365d15134a645fa7aaf7eee038ab4937449b21ca9.nix;
        revNum = 0;
        sha256 = "e386132ae45e0e5a62af4cd365d15134a645fa7aaf7eee038ab4937449b21ca9";
        };
      default = "r0";
      };
    };
  }