{
  "0.1.0.0" = {
    sha256 = "4043d1226482acf5bd9fd6797b95f24494a3f1b8612bbe4a469dfa0819023f47";
    revisions = {
      r0 = {
        nix = import ../hackage/mud-0.1.0.0-r0-cf6c8754be4ed0db512c3b2c2b2e379d88a812993cd314547440fd4299268693.nix;
        revNum = 0;
        sha256 = "cf6c8754be4ed0db512c3b2c2b2e379d88a812993cd314547440fd4299268693";
      };
      r1 = {
        nix = import ../hackage/mud-0.1.0.0-r1-6d62d56fc07cd9b413ccbdddbcc517969acf89b1906b2254f0d0fb7c3b85203d.nix;
        revNum = 1;
        sha256 = "6d62d56fc07cd9b413ccbdddbcc517969acf89b1906b2254f0d0fb7c3b85203d";
      };
      default = "r1";
    };
  };
}