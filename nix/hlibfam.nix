{
  "0.1" = {
    sha256 = "cbb02f7d151ffbbda7b3ca2b214e4fa3fb9d4e962a8001cd7248f5848cce01f9";
    revisions = {
      r0 = {
        nix = import ../hackage/hlibfam-0.1-r0-89a26025dec530a47f585d03e8b394050bbaacefd1d5bdc4a694ca34c2ae8ce2.nix;
        revNum = 0;
        sha256 = "89a26025dec530a47f585d03e8b394050bbaacefd1d5bdc4a694ca34c2ae8ce2";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "cd87f9f3f9718e00643b311f7e3cee1a8347003598a125e7d0b8de2bb0e33d83";
    revisions = {
      r0 = {
        nix = import ../hackage/hlibfam-0.2-r0-2335080e09066db47697a9f04130481f267b0207eb51dc0de2a40299b7d88bdf.nix;
        revNum = 0;
        sha256 = "2335080e09066db47697a9f04130481f267b0207eb51dc0de2a40299b7d88bdf";
      };
      default = "r0";
    };
  };
}