{
  "0.0.1" = {
    sha256 = "77a4e595250fba6f5c767f544d73d9505378c0ce7864dea6b36c9e722e00e453";
    revisions = {
      r0 = {
        nix = import ../hackage/hcount-0.0.1-r0-d6372924af7d727b4040786b107202b451a4354f6fec80a7556e79a6c3d4558c.nix;
        revNum = 0;
        sha256 = "d6372924af7d727b4040786b107202b451a4354f6fec80a7556e79a6c3d4558c";
        };
      r1 = {
        nix = import ../hackage/hcount-0.0.1-r1-e5921c0758da5cf3ca34491cbf0bec950dce3585cc2003051113c2d060ce7c3f.nix;
        revNum = 1;
        sha256 = "e5921c0758da5cf3ca34491cbf0bec950dce3585cc2003051113c2d060ce7c3f";
        };
      default = "r1";
      };
    };
  "0.0.2" = {
    sha256 = "334e3cf7eff21379381ae0f8b52f3ec03ee308c7d88f925e8c18b838b7462321";
    revisions = {
      r0 = {
        nix = import ../hackage/hcount-0.0.2-r0-f418034a80848db7c13daf858afd1f97e9ee198135af364e6e524288d0ee3d38.nix;
        revNum = 0;
        sha256 = "f418034a80848db7c13daf858afd1f97e9ee198135af364e6e524288d0ee3d38";
        };
      default = "r0";
      };
    };
  }