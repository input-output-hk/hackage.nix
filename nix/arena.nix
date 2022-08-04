{
  "0.1" = {
    sha256 = "4b15bd66601e043b6c24ba74ac2e2123ef46832b9bf48eaef66770dfbba5e8e5";
    revisions = {
      r0 = {
        nix = import ../hackage/arena-0.1-r0-1ff4a2f170497639ca0e726a72e0cc944d81b9ff816b0f6d733051b16aea5476.nix;
        revNum = 0;
        sha256 = "1ff4a2f170497639ca0e726a72e0cc944d81b9ff816b0f6d733051b16aea5476";
        };
      r1 = {
        nix = import ../hackage/arena-0.1-r1-fa9abdbd4a0df1eddd4c061f9e2b0d2ebe5ac7fae0a462d26024c2ba17c00139.nix;
        revNum = 1;
        sha256 = "fa9abdbd4a0df1eddd4c061f9e2b0d2ebe5ac7fae0a462d26024c2ba17c00139";
        };
      default = "r1";
      };
    };
  }