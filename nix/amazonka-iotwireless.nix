{
  "2.0" = {
    sha256 = "4e575536ef69565bf262c629a2375c30d26bd16b258ca92bae6d0831af94ac09";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-iotwireless-2.0-r0-599dd8b9990291f04c8e605998a90172eacbd66f216b3607fba3afc39ab8b219.nix;
        revNum = 0;
        sha256 = "599dd8b9990291f04c8e605998a90172eacbd66f216b3607fba3afc39ab8b219";
      };
      r1 = {
        nix = import ../hackage/amazonka-iotwireless-2.0-r1-9a9cee3167958e1e584289bdfc4197a05a25155361277f58819b28d04ff1a7bf.nix;
        revNum = 1;
        sha256 = "9a9cee3167958e1e584289bdfc4197a05a25155361277f58819b28d04ff1a7bf";
      };
      default = "r1";
    };
  };
}