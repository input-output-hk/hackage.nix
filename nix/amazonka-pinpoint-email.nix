{
  "2.0" = {
    sha256 = "8462bd39b672a2851cc3bce9567f6e97f040d96b71a166eb510d68cd41fda6ac";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-pinpoint-email-2.0-r0-c2e843dfd961bacb35afe38ed193622c6bd6a0a8e862fbc0d5113c0946d1710b.nix;
        revNum = 0;
        sha256 = "c2e843dfd961bacb35afe38ed193622c6bd6a0a8e862fbc0d5113c0946d1710b";
      };
      r1 = {
        nix = import ../hackage/amazonka-pinpoint-email-2.0-r1-151f3cdd6e3552bb5a89faa5a67b2b6b8599a342c106824633c191aa88ebce71.nix;
        revNum = 1;
        sha256 = "151f3cdd6e3552bb5a89faa5a67b2b6b8599a342c106824633c191aa88ebce71";
      };
      default = "r1";
    };
  };
}